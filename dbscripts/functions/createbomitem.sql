CREATE OR REPLACE FUNCTION createBOMItem( INTEGER, INTEGER, INTEGER, INTEGER, CHAR,
                                          INTEGER, NUMERIC, NUMERIC,
                                          DATE, DATE,
                                          BOOL, INTEGER, BOOL, TEXT, CHAR, INTEGER,
                                          INTEGER, TEXT, TEXT, TEXT )
                           RETURNS INTEGER AS $$
DECLARE
  pBomitemid ALIAS FOR $1;
  pParentItemid ALIAS FOR $2;
  pComponentItemid ALIAS FOR $3;
  pSeqNumber ALIAS FOR $4;
  pIssueMethod ALIAS FOR $5;
  pUomId ALIAS FOR $6;
  pQtyPer ALIAS FOR $7;
  pScrap ALIAS FOR $8;
  pEffective ALIAS FOR $9;
  pExpires ALIAS FOR $10;
  pCreateWo ALIAS FOR $11;
  pBOOItemseqid ALIAS FOR $12;
  pSchedAtWooper ALIAS FOR $13;
  pECN ALIAS FOR $14;
  pSubType ALIAS FOR $15;
  pRevisionid ALIAS FOR $16;
  pCharId ALIAS FOR $17;
  pCharVal ALIAS FOR $18;
  pNotes ALIAS FOR $19;
  pRef ALIAS FOR $20;
  _bomworksetid INTEGER;
  _temp INTEGER;

BEGIN

--  Make sure that the parent and component are not the same
  IF (pParentItemid = pComponentItemid) THEN
    RETURN -1;
  END IF;

--  Make sure that the parent is not used in the component at some level
  IF ( SELECT (item_type IN ('M', 'F'))
       FROM item
       WHERE (item_id=pComponentItemid) ) THEN
    SELECT indentedWhereUsed(pParentItemid) INTO _bomworksetid;
    SELECT bomwork_id INTO _temp
    FROM bomwork
    WHERE ( (bomwork_set_id=_bomworksetid)
     AND (bomwork_item_id=pComponentItemid) )
    LIMIT 1;
    IF (FOUND) THEN
      PERFORM deleteBOMWorkset(_bomworksetid);
      RETURN -2;
    END IF;
  END IF;

  PERFORM deleteBOMWorkset(_bomworksetid);

--  Create the BOM Item
  INSERT INTO bomitem
  ( bomitem_id, bomitem_parent_item_id, bomitem_item_id,
    bomitem_seqnumber, bomitem_issuemethod,
    bomitem_uom_id, bomitem_qtyper, bomitem_scrap,
    bomitem_effective, bomitem_expires,
    bomitem_createwo,
    bomitem_booitem_seq_id, bomitem_schedatwooper,
    bomitem_ecn, bomitem_subtype, bomitem_moddate, bomitem_rev_id,
    bomitem_char_id, bomitem_value, bomitem_notes, bomitem_ref )
  VALUES
  ( pBomitemid, pParentItemid, pComponentItemid,
    pSeqNumber, pIssueMethod,
    pUomId, pQtyPer, pScrap,
    pEffective, pExpires,
    pCreateWo,
    pBOOItemseqid, COALESCE(pSchedAtWooper, FALSE),
    pECN, pSubType, CURRENT_DATE, pRevisionid,
    pCharId,pCharVal,pNotes, pRef );

  RETURN pBomitemid;

END;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION createBOMItem( INTEGER, INTEGER, INTEGER, INTEGER, CHAR,
                                          INTEGER, NUMERIC, NUMERIC,
                                          DATE, DATE,
                                          BOOL, INTEGER, BOOL, TEXT, CHAR, INTEGER,
                                          INTEGER, TEXT )
                           RETURNS INTEGER AS $$
DECLARE
  pBomitemid ALIAS FOR $1;
  pParentItemid ALIAS FOR $2;
  pComponentItemid ALIAS FOR $3;
  pSeqNumber ALIAS FOR $4;
  pIssueMethod ALIAS FOR $5;
  pUomId ALIAS FOR $6;
  pQtyPer ALIAS FOR $7;
  pScrap ALIAS FOR $8;
  pEffective ALIAS FOR $9;
  pExpires ALIAS FOR $10;
  pCreateWo ALIAS FOR $11;
  pBOOItemseqid ALIAS FOR $12;
  pSchedAtWooper ALIAS FOR $13;
  pECN ALIAS FOR $14;
  pSubType ALIAS FOR $15;
  pRevisionid ALIAS FOR $16;
  pCharId ALIAS FOR $17;
  pCharVal ALIAS FOR $18;
  _bomworksetid INTEGER;
  _temp INTEGER;
  _bomitemid INTEGER;

BEGIN

  SELECT createBOMItem( pBomitemid, pParentItemid, pComponentItemid,
                        pSeqNumber, pIssueMethod,
                        pUomId, pQtyPer, pScrap,
                        pEffective, pExpires,
                        pCreateWo, pBOOItemseqid, pSchedAtWooper, pECN, pSubType, pRevisionid, pCharId, pCharVal, NULL, NULL ) INTO _bomitemid;

  RETURN _bomitemid;
  
END;
$$ LANGUAGE 'plpgsql';



CREATE OR REPLACE FUNCTION createBOMItem( INTEGER, INTEGER, INTEGER, CHAR,
                                          INTEGER, NUMERIC, NUMERIC,
                                          DATE, DATE,
                                          BOOL, INTEGER, BOOL, TEXT, CHAR(1), INTEGER,
                                          INTEGER, TEXT, TEXT, TEXT )
                           RETURNS INTEGER AS $$
DECLARE
  pBomitemid ALIAS FOR $1;
  pParentItemid ALIAS FOR $2;
  pComponentItemid ALIAS FOR $3;
  pIssueMethod ALIAS FOR $4;
  pUomId ALIAS FOR $5;
  pQtyPer ALIAS FOR $6;
  pScrap ALIAS FOR $7;
  pEffective ALIAS FOR $8;
  pExpires ALIAS FOR $9;
  pCreateWo ALIAS FOR $10;
  pBOOItemseqid ALIAS FOR $11;
  pSchedAtWooper ALIAS FOR $12;
  pECN ALIAS FOR $13;
  pSubType ALIAS FOR $14;
  pRevisionid ALIAS FOR $15;
  pCharId ALIAS FOR $16;
  pCharVal ALIAS FOR $17;
  pNotes ALIAS FOR $18;
  pRef ALIAS FOR $19;
  _seqNumber INTEGER;
  _bomitemid INTEGER;

BEGIN

--  Grab the next Sequence Number, if any
  SELECT MAX(bomitem_seqnumber) INTO _seqNumber
  FROM bomitem(pParentItemid,pRevisionid);

  IF (_seqNumber IS NOT NULL) THEN
   _seqNumber := (_seqNumber + 10);
  ELSE
   _seqNumber := 10;
  END IF;

  SELECT createBOMItem( pBomitemid, pParentItemid, pComponentItemid,
                        _seqNumber, pIssueMethod,
                        pUomId, pQtyPer, pScrap,
                        pEffective, pExpires,
                        pCreateWo, pBOOItemseqid, pSchedAtWooper, pECN, pSubType, pRevisionid, pCharId, pCharVal, pNotes, pRef ) INTO _bomitemid;

  RETURN _bomitemid;

END;
$$ LANGUAGE 'plpgsql';
