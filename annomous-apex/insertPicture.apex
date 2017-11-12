// Insert a Base64 String PNG
// Useful website: http://www.motobit.com/util/base64-decoder-encoder.asp
Document doc = new Document();
doc.body = EncodingUtil.base64Decode('iVBORw0KGgoAAAANSUhEUgAAAMgAAADIBAMAAABfdrOtAAAAG1BMVEXMzMyWlpbFxcWqqqqcnJyjo6OxsbG3t7e+vr6pf3+GAAAACXBIWXMAAA7EAAAOxAGVKw4bAAABTElEQVR4nO3UT07CQByG4Q8phSUtRV2WyAFK4gFaMyYuhRO0N6CJiVu4uTNTgw5h1XZh4vssfsnMl7TzXwIAAAAAAAAAAAAAAACA/+Pu+TWXPrLjd7l4MgfdDHqIsipVnFQPXflRmSS/GfTQFPFKm5dF1pUL29sUt4I+9rkytUftTr5IbaG2lmapJmUQDGDswrg/nWtf7Po9uj5FpaJlEAzwKTuTStoUvkiLdex2YH50M/kdDDJfuaFv3n2x7X1bdoFduCAYokntXOywfbHtc9Id2DjJw2CAaXYKBzxdd8HuTWPN5K46KFz6qDuv23WusfZktpI/x23ti220lavaF9dBf637VnAdzDaVPw7XQX92mAoudnwfu+/P3J/GuvGVMSZ4orb2duRuZ4wpx3q7Eit4bJvaL+HE9i/HeoUBAAAAAAAAAAAAAAAA/AFffMdIP+g1B4cAAAAASUVORK5CYII=');
doc.type = 'png';
doc.contenttype = 'image/png';
doc.description = 'This is a picture';
doc.Name = 'Pic Name';
doc.folderid = [SELECT Id FROM Folder WHERE name='Name of Folder'].Id;
insert doc;
