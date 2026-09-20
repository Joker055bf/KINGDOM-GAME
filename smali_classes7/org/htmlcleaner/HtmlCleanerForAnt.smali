.class public Lorg/htmlcleaner/HtmlCleanerForAnt;
.super Lorg/apache/tools/ant/Task;
.source "HtmlCleanerForAnt.java"


# instance fields
.field private advancedxmlescape:Z

.field private allowInvalidAttributeNames:Z

.field private allowhtmlinsideattributes:Z

.field private allowmultiwordattributes:Z

.field private booleanatts:Ljava/lang/String;

.field private dest:Ljava/lang/String;

.field private hyphenreplacement:Ljava/lang/String;

.field private ignoreqe:Z

.field private incharset:Ljava/lang/String;

.field private invalidAttributeNamePrefix:Ljava/lang/String;

.field private namespacesaware:Z

.field private nodebyxpath:Ljava/lang/String;

.field private omitcomments:Z

.field private omitdeprtags:Z

.field private omitdoctypedecl:Z

.field private omithtmlenvelope:Z

.field private omitunknowntags:Z

.field private omitxmldecl:Z

.field private outcharset:Ljava/lang/String;

.field private outputtype:Ljava/lang/String;

.field private prunetags:Ljava/lang/String;

.field private specialentities:Z

.field private src:Ljava/lang/String;

.field private taginfofile:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private transform:Ljava/lang/String;

.field private treatdeprtagsascontent:Z

.field private treatunknowntagsascontent:Z

.field private unicodechars:Z

.field private usecdata:Z

.field private usecdatafor:Ljava/lang/String;

.field private useemptyelementtags:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 55
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const-string v0, "UTF-8"

    .line 60
    iput-object v0, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->incharset:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->outcharset:Ljava/lang/String;

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->taginfofile:Ljava/lang/String;

    const-string v1, "simple"

    .line 63
    iput-object v1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->outputtype:Ljava/lang/String;

    const/4 v1, 0x1

    .line 64
    iput-boolean v1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->advancedxmlescape:Z

    .line 65
    iput-boolean v1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->usecdata:Z

    const-string v2, "script,style"

    .line 66
    iput-object v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->usecdatafor:Ljava/lang/String;

    .line 67
    iput-boolean v1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->specialentities:Z

    .line 68
    iput-boolean v1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->unicodechars:Z

    const/4 v2, 0x0

    .line 69
    iput-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitunknowntags:Z

    .line 70
    iput-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->treatunknowntagsascontent:Z

    .line 71
    iput-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitdeprtags:Z

    .line 72
    iput-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->treatdeprtagsascontent:Z

    .line 73
    iput-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitcomments:Z

    .line 74
    iput-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitxmldecl:Z

    .line 75
    iput-boolean v1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitdoctypedecl:Z

    .line 76
    iput-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omithtmlenvelope:Z

    .line 77
    iput-boolean v1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->useemptyelementtags:Z

    .line 78
    iput-boolean v1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->allowmultiwordattributes:Z

    .line 79
    iput-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->allowhtmlinsideattributes:Z

    .line 80
    iput-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->ignoreqe:Z

    .line 81
    iput-boolean v1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->namespacesaware:Z

    const-string v1, "="

    .line 82
    iput-object v1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->hyphenreplacement:Ljava/lang/String;

    const-string v1, ""

    .line 83
    iput-object v1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->prunetags:Ljava/lang/String;

    const-string v3, "self"

    .line 84
    iput-object v3, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->booleanatts:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->nodebyxpath:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->transform:Ljava/lang/String;

    .line 89
    iput-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->allowInvalidAttributeNames:Z

    .line 90
    iput-object v1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->invalidAttributeNamePrefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addText(Ljava/lang/String;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->text:Ljava/lang/String;

    return-void
.end method

.method public execute()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->taginfofile:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 226
    new-instance v0, Lorg/htmlcleaner/HtmlCleaner;

    new-instance v1, Lorg/htmlcleaner/ConfigFileTagProvider;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->taginfofile:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/htmlcleaner/ConfigFileTagProvider;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Lorg/htmlcleaner/HtmlCleaner;-><init>(Lorg/htmlcleaner/ITagInfoProvider;)V

    goto :goto_0

    .line 228
    :cond_0
    new-instance v0, Lorg/htmlcleaner/HtmlCleaner;

    invoke-direct {v0}, Lorg/htmlcleaner/HtmlCleaner;-><init>()V

    .line 231
    :goto_0
    iget-object v1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->text:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->src:Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 232
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Eather attribute \'src\' or text body containing HTML must be specified!"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lorg/htmlcleaner/HtmlCleaner;->getProperties()Lorg/htmlcleaner/CleanerProperties;

    move-result-object v1

    .line 237
    iget-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->advancedxmlescape:Z

    invoke-virtual {v1, v2}, Lorg/htmlcleaner/CleanerProperties;->setAdvancedXmlEscape(Z)V

    .line 238
    iget-object v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->usecdatafor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/htmlcleaner/CleanerProperties;->setUseCdataFor(Ljava/lang/String;)V

    .line 239
    iget-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->usecdata:Z

    invoke-virtual {v1, v2}, Lorg/htmlcleaner/CleanerProperties;->setUseCdataForScriptAndStyle(Z)V

    .line 240
    iget-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->specialentities:Z

    invoke-virtual {v1, v2}, Lorg/htmlcleaner/CleanerProperties;->setTranslateSpecialEntities(Z)V

    .line 241
    iget-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->unicodechars:Z

    invoke-virtual {v1, v2}, Lorg/htmlcleaner/CleanerProperties;->setRecognizeUnicodeChars(Z)V

    .line 242
    iget-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitunknowntags:Z

    invoke-virtual {v1, v2}, Lorg/htmlcleaner/CleanerProperties;->setOmitUnknownTags(Z)V

    .line 243
    iget-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->treatunknowntagsascontent:Z

    invoke-virtual {v1, v2}, Lorg/htmlcleaner/CleanerProperties;->setTreatUnknownTagsAsContent(Z)V

    .line 244
    iget-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitdeprtags:Z

    invoke-virtual {v1, v2}, Lorg/htmlcleaner/CleanerProperties;->setOmitDeprecatedTags(Z)V

    .line 245
    iget-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->treatdeprtagsascontent:Z

    invoke-virtual {v1, v2}, Lorg/htmlcleaner/CleanerProperties;->setTreatDeprecatedTagsAsContent(Z)V

    .line 246
    iget-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitcomments:Z

    invoke-virtual {v1, v2}, Lorg/htmlcleaner/CleanerProperties;->setOmitComments(Z)V

    .line 247
    iget-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitxmldecl:Z

    invoke-virtual {v1, v2}, Lorg/htmlcleaner/CleanerProperties;->setOmitXmlDeclaration(Z)V

    .line 248
    iget-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitdoctypedecl:Z

    invoke-virtual {v1, v2}, Lorg/htmlcleaner/CleanerProperties;->setOmitDoctypeDeclaration(Z)V

    .line 249
    iget-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omithtmlenvelope:Z

    invoke-virtual {v1, v2}, Lorg/htmlcleaner/CleanerProperties;->setOmitHtmlEnvelope(Z)V

    .line 250
    iget-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->useemptyelementtags:Z

    invoke-virtual {v1, v2}, Lorg/htmlcleaner/CleanerProperties;->setUseEmptyElementTags(Z)V

    .line 251
    iget-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->allowmultiwordattributes:Z

    invoke-virtual {v1, v2}, Lorg/htmlcleaner/CleanerProperties;->setAllowMultiWordAttributes(Z)V

    .line 252
    iget-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->allowhtmlinsideattributes:Z

    invoke-virtual {v1, v2}, Lorg/htmlcleaner/CleanerProperties;->setAllowHtmlInsideAttributes(Z)V

    .line 253
    iget-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->ignoreqe:Z

    invoke-virtual {v1, v2}, Lorg/htmlcleaner/CleanerProperties;->setIgnoreQuestAndExclam(Z)V

    .line 254
    iget-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->namespacesaware:Z

    invoke-virtual {v1, v2}, Lorg/htmlcleaner/CleanerProperties;->setNamespacesAware(Z)V

    .line 255
    iget-object v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->hyphenreplacement:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/htmlcleaner/CleanerProperties;->setHyphenReplacementInComment(Ljava/lang/String;)V

    .line 256
    iget-object v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->prunetags:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/htmlcleaner/CleanerProperties;->setPruneTags(Ljava/lang/String;)V

    .line 257
    iget-object v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->booleanatts:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/htmlcleaner/CleanerProperties;->setBooleanAttributeValues(Ljava/lang/String;)V

    .line 258
    iget-boolean v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->allowInvalidAttributeNames:Z

    invoke-virtual {v1, v2}, Lorg/htmlcleaner/CleanerProperties;->setAllowInvalidAttributeNames(Z)V

    .line 259
    iget-object v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->invalidAttributeNamePrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/htmlcleaner/CleanerProperties;->setInvalidXmlAttributeNamePrefix(Ljava/lang/String;)V

    .line 264
    iget-object v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->transform:Ljava/lang/String;

    invoke-static {v2}, Lorg/htmlcleaner/Utils;->isEmptyString(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_6

    .line 265
    iget-object v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->transform:Ljava/lang/String;

    const-string v4, "|"

    invoke-static {v2, v4}, Lorg/htmlcleaner/Utils;->tokenize(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 266
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 267
    array-length v5, v2

    move v6, v3

    :goto_2
    if-ge v6, v5, :cond_5

    aget-object v7, v2, v6

    const/16 v8, 0x3d

    .line 268
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gtz v8, :cond_3

    move-object v9, v7

    goto :goto_3

    .line 269
    :cond_3
    invoke-virtual {v7, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    :goto_3
    if-gtz v8, :cond_4

    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 270
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 271
    :goto_4
    invoke-interface {v4, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 274
    :cond_5
    invoke-virtual {v0, v4}, Lorg/htmlcleaner/HtmlCleaner;->initCleanerTransformations(Ljava/util/Map;)V

    .line 280
    :cond_6
    :try_start_0
    iget-object v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->src:Ljava/lang/String;

    if-eqz v2, :cond_8

    const-string v4, "http://"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->src:Ljava/lang/String;

    const-string v4, "https://"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 281
    :cond_7
    new-instance v2, Ljava/net/URL;

    iget-object v4, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->src:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->incharset:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/net/URL;Ljava/lang/String;)Lorg/htmlcleaner/TagNode;

    move-result-object v0

    goto :goto_5

    .line 282
    :cond_8
    iget-object v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->src:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 283
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->src:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->incharset:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/io/File;Ljava/lang/String;)Lorg/htmlcleaner/TagNode;

    move-result-object v0

    goto :goto_5

    .line 285
    :cond_9
    iget-object v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/lang/String;)Lorg/htmlcleaner/TagNode;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/htmlcleaner/XPatherException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_5
    :try_start_1
    iget-object v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->nodebyxpath:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 294
    invoke-virtual {v0, v2}, Lorg/htmlcleaner/TagNode;->evaluateXPath(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    .line 295
    array-length v4, v2

    :goto_6
    if-ge v3, v4, :cond_b

    aget-object v5, v2, v3

    .line 296
    instance-of v6, v5, Lorg/htmlcleaner/TagNode;

    if-eqz v6, :cond_a

    .line 297
    move-object v0, v5

    check-cast v0, Lorg/htmlcleaner/TagNode;

    goto :goto_7

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 307
    :cond_b
    :goto_7
    iget-object v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->dest:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/htmlcleaner/XPatherException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, ""

    if-eqz v2, :cond_e

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_8

    .line 309
    :cond_c
    iget-object v2, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->dest:Ljava/lang/String;

    const-string v4, "property:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 310
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 311
    iget-object v3, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->dest:Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 312
    invoke-virtual {p0}, Lorg/htmlcleaner/HtmlCleanerForAnt;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting property "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;)V

    goto :goto_9

    .line 314
    :cond_d
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->dest:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    goto :goto_9

    .line 308
    :cond_e
    :goto_8
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    :goto_9
    const-string v4, "compact"

    .line 317
    iget-object v5, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->outputtype:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 318
    new-instance v4, Lorg/htmlcleaner/CompactXmlSerializer;

    invoke-direct {v4, v1}, Lorg/htmlcleaner/CompactXmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    iget-object v1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->outcharset:Ljava/lang/String;

    invoke-virtual {v4, v0, v2, v1}, Lorg/htmlcleaner/CompactXmlSerializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_a

    :cond_f
    const-string v4, "browser-compact"

    .line 319
    iget-object v5, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->outputtype:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 320
    new-instance v4, Lorg/htmlcleaner/BrowserCompactXmlSerializer;

    invoke-direct {v4, v1}, Lorg/htmlcleaner/BrowserCompactXmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    iget-object v1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->outcharset:Ljava/lang/String;

    invoke-virtual {v4, v0, v2, v1}, Lorg/htmlcleaner/BrowserCompactXmlSerializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_a

    :cond_10
    const-string v4, "pretty"

    .line 321
    iget-object v5, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->outputtype:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 322
    new-instance v4, Lorg/htmlcleaner/PrettyXmlSerializer;

    invoke-direct {v4, v1}, Lorg/htmlcleaner/PrettyXmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    iget-object v1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->outcharset:Ljava/lang/String;

    invoke-virtual {v4, v0, v2, v1}, Lorg/htmlcleaner/PrettyXmlSerializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_a

    .line 324
    :cond_11
    new-instance v4, Lorg/htmlcleaner/SimpleXmlSerializer;

    invoke-direct {v4, v1}, Lorg/htmlcleaner/SimpleXmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    iget-object v1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->outcharset:Ljava/lang/String;

    invoke-virtual {v4, v0, v2, v1}, Lorg/htmlcleaner/SimpleXmlSerializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;)V

    :goto_a
    if-eqz v3, :cond_12

    .line 327
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12

    .line 328
    invoke-virtual {p0}, Lorg/htmlcleaner/HtmlCleanerForAnt;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    return-void

    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    .line 288
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/htmlcleaner/XPatherException; {:try_start_2 .. :try_end_2} :catch_0

    .line 334
    :goto_b
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 332
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getInvalidAttributeNamePrefix()Ljava/lang/String;
    .locals 1

    .line 347
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->invalidAttributeNamePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public isAllowInvalidAttributeNames()Z
    .locals 1

    .line 339
    iget-boolean v0, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->allowInvalidAttributeNames:Z

    return v0
.end method

.method public setAdvancedxmlescape(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->advancedxmlescape:Z

    return-void
.end method

.method public setAllowInvalidAttributeNames(Z)V
    .locals 0

    .line 343
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->allowInvalidAttributeNames:Z

    return-void
.end method

.method public setAllowhtmlinsideattributes(Z)V
    .locals 0

    .line 182
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->allowhtmlinsideattributes:Z

    return-void
.end method

.method public setAllowmultiwordattributes(Z)V
    .locals 0

    .line 178
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->allowmultiwordattributes:Z

    return-void
.end method

.method public setBooleanatts(Ljava/lang/String;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->booleanatts:Ljava/lang/String;

    return-void
.end method

.method public setDest(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->dest:Ljava/lang/String;

    return-void
.end method

.method public setHyphenreplacement(Ljava/lang/String;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->hyphenreplacement:Ljava/lang/String;

    return-void
.end method

.method public setIgnoreqe(Z)V
    .locals 0

    .line 186
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->ignoreqe:Z

    return-void
.end method

.method public setIncharset(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->incharset:Ljava/lang/String;

    return-void
.end method

.method public setInvalidAttributeNamePrefix(Ljava/lang/String;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->invalidAttributeNamePrefix:Ljava/lang/String;

    return-void
.end method

.method public setNamespacesaware(Z)V
    .locals 0

    .line 190
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->namespacesaware:Z

    return-void
.end method

.method public setNodebyxpath(Ljava/lang/String;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->nodebyxpath:Ljava/lang/String;

    return-void
.end method

.method public setOmitcomments(Z)V
    .locals 0

    .line 158
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitcomments:Z

    return-void
.end method

.method public setOmitdeprtags(Z)V
    .locals 0

    .line 149
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitdeprtags:Z

    return-void
.end method

.method public setOmitdoctypedecl(Z)V
    .locals 0

    .line 166
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitdoctypedecl:Z

    return-void
.end method

.method public setOmithtmlenvelope(Z)V
    .locals 0

    .line 170
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omithtmlenvelope:Z

    return-void
.end method

.method public setOmitunknowntags(Z)V
    .locals 0

    .line 141
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitunknowntags:Z

    return-void
.end method

.method public setOmitxmldecl(Z)V
    .locals 0

    .line 162
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->omitxmldecl:Z

    return-void
.end method

.method public setOutcharset(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->outcharset:Ljava/lang/String;

    return-void
.end method

.method public setOutputtype(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->outputtype:Ljava/lang/String;

    return-void
.end method

.method public setPrunetags(Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->prunetags:Ljava/lang/String;

    return-void
.end method

.method public setSpecialentities(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->specialentities:Z

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->src:Ljava/lang/String;

    return-void
.end method

.method public setTaginfofile(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->taginfofile:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->text:Ljava/lang/String;

    return-void
.end method

.method public setTransform(Ljava/lang/String;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->transform:Ljava/lang/String;

    return-void
.end method

.method public setTreatdeprtagsascontent(Z)V
    .locals 0

    .line 154
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->treatdeprtagsascontent:Z

    return-void
.end method

.method public setTreatunknowntagsascontent(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->treatunknowntagsascontent:Z

    return-void
.end method

.method public setUnicodechars(Z)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->unicodechars:Z

    return-void
.end method

.method public setUsecdata(Z)V
    .locals 0

    .line 125
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->usecdata:Z

    return-void
.end method

.method public setUsecdatafor(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->usecdatafor:Ljava/lang/String;

    return-void
.end method

.method public setUseemptyelementtags(Z)V
    .locals 0

    .line 174
    iput-boolean p1, p0, Lorg/htmlcleaner/HtmlCleanerForAnt;->useemptyelementtags:Z

    return-void
.end method
