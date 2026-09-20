.class public Lorg/htmlcleaner/CleanerProperties;
.super Ljava/lang/Object;
.source "CleanerProperties.java"

# interfaces
.implements Lorg/htmlcleaner/audit/HtmlModificationListener;


# static fields
.field public static final BOOL_ATT_EMPTY:Ljava/lang/String; = "empty"

.field public static final BOOL_ATT_SELF:Ljava/lang/String; = "self"

.field public static final BOOL_ATT_TRUE:Ljava/lang/String; = "true"

.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"


# instance fields
.field private addNewlineToHeadAndBody:Z

.field private advancedXmlEscape:Z

.field private allowHtmlInsideAttributes:Z

.field private allowInvalidAttributeNames:Z

.field private allowMultiWordAttributes:Z

.field private allowTagSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/htmlcleaner/conditional/ITagNodeCondition;",
            ">;"
        }
    .end annotation
.end field

.field private allowTags:Ljava/lang/String;

.field private booleanAttributeValues:Ljava/lang/String;

.field private charset:Ljava/lang/String;

.field private cleanerTransformations:Lorg/htmlcleaner/CleanerTransformations;

.field private deserializeEntities:Z

.field private htmlModificationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/htmlcleaner/audit/HtmlModificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private htmlVersion:I

.field private hyphenReplacementInComment:Ljava/lang/String;

.field private ignoreQuestAndExclam:Z

.field private invalidAttributeNamePrefix:Ljava/lang/String;

.field private keepWhitespaceAndCommentsInHead:Z

.field private namespacesAware:Z

.field private omitCdataOutsideScriptAndStyle:Z

.field private omitComments:Z

.field private omitDeprecatedTags:Z

.field private omitDoctypeDeclaration:Lorg/htmlcleaner/OptionalOutput;

.field private omitHtmlEnvelope:Lorg/htmlcleaner/OptionalOutput;

.field private omitUnknownTags:Z

.field private omitXmlDeclaration:Lorg/htmlcleaner/OptionalOutput;

.field private pruneTagSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/htmlcleaner/conditional/ITagNodeCondition;",
            ">;"
        }
    .end annotation
.end field

.field private pruneTags:Ljava/lang/String;

.field private recognizeUnicodeChars:Z

.field private tagInfoProvider:Lorg/htmlcleaner/ITagInfoProvider;

.field private transResCharsToNCR:Z

.field private transSpecialEntitiesToNCR:Z

.field private translateSpecialEntities:Z

.field private treatDeprecatedTagsAsContent:Z

.field private treatUnknownTagsAsContent:Z

.field private trimAttributeValues:Z

.field private useCdataFor:Ljava/lang/String;

.field private useCdataForList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private useEmptyElementTags:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Lorg/htmlcleaner/CleanerTransformations;

    invoke-direct {v0}, Lorg/htmlcleaner/CleanerTransformations;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->cleanerTransformations:Lorg/htmlcleaner/CleanerTransformations;

    .line 120
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->pruneTagSet:Ljava/util/Set;

    .line 124
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->allowTagSet:Ljava/util/Set;

    const-string v0, "UTF-8"

    .line 125
    iput-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->charset:Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Lorg/htmlcleaner/CleanerProperties;->reset()V

    return-void
.end method

.method public constructor <init>(Lorg/htmlcleaner/ITagInfoProvider;)V
    .locals 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Lorg/htmlcleaner/CleanerTransformations;

    invoke-direct {v0}, Lorg/htmlcleaner/CleanerTransformations;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->cleanerTransformations:Lorg/htmlcleaner/CleanerTransformations;

    .line 120
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->pruneTagSet:Ljava/util/Set;

    .line 124
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->allowTagSet:Ljava/util/Set;

    const-string v0, "UTF-8"

    .line 125
    iput-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->charset:Ljava/lang/String;

    .line 136
    invoke-virtual {p0}, Lorg/htmlcleaner/CleanerProperties;->reset()V

    .line 137
    iput-object p1, p0, Lorg/htmlcleaner/CleanerProperties;->tagInfoProvider:Lorg/htmlcleaner/ITagInfoProvider;

    return-void
.end method

.method private addTagNameConditions(Ljava/util/Set;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/htmlcleaner/conditional/ITagNodeCondition;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 455
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 457
    new-instance p2, Lorg/htmlcleaner/conditional/TagNodeNameCondition;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Lorg/htmlcleaner/conditional/TagNodeNameCondition;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetPruneTagSet()V
    .locals 2

    .line 564
    iget-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->pruneTagSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 565
    iget-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->pruneTagSet:Ljava/util/Set;

    sget-object v1, Lorg/htmlcleaner/conditional/TagNodeAutoGeneratedCondition;->INSTANCE:Lorg/htmlcleaner/conditional/TagNodeAutoGeneratedCondition;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setAllowTagSet(Ljava/lang/String;)V
    .locals 1

    .line 436
    iget-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->allowTagSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 437
    iget-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->allowTagSet:Ljava/util/Set;

    invoke-direct {p0, v0, p1}, Lorg/htmlcleaner/CleanerProperties;->addTagNameConditions(Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addHtmlModificationListener(Lorg/htmlcleaner/audit/HtmlModificationListener;)V
    .locals 1

    .line 590
    iget-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->htmlModificationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPruneTagNodeCondition(Lorg/htmlcleaner/conditional/ITagNodeCondition;)V
    .locals 1

    .line 419
    iget-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->pruneTagSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public fireConditionModification(Lorg/htmlcleaner/conditional/ITagNodeCondition;Lorg/htmlcleaner/TagNode;)V
    .locals 2

    .line 594
    iget-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->htmlModificationListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/htmlcleaner/audit/HtmlModificationListener;

    .line 595
    invoke-interface {v1, p1, p2}, Lorg/htmlcleaner/audit/HtmlModificationListener;->fireConditionModification(Lorg/htmlcleaner/conditional/ITagNodeCondition;Lorg/htmlcleaner/TagNode;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fireHtmlError(ZLorg/htmlcleaner/TagNode;Lorg/htmlcleaner/audit/ErrorType;)V
    .locals 2

    .line 600
    iget-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->htmlModificationListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/htmlcleaner/audit/HtmlModificationListener;

    .line 601
    invoke-interface {v1, p1, p2, p3}, Lorg/htmlcleaner/audit/HtmlModificationListener;->fireHtmlError(ZLorg/htmlcleaner/TagNode;Lorg/htmlcleaner/audit/ErrorType;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fireUglyHtml(ZLorg/htmlcleaner/TagNode;Lorg/htmlcleaner/audit/ErrorType;)V
    .locals 2

    .line 607
    iget-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->htmlModificationListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/htmlcleaner/audit/HtmlModificationListener;

    .line 608
    invoke-interface {v1, p1, p2, p3}, Lorg/htmlcleaner/audit/HtmlModificationListener;->fireUglyHtml(ZLorg/htmlcleaner/TagNode;Lorg/htmlcleaner/audit/ErrorType;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fireUserDefinedModification(ZLorg/htmlcleaner/TagNode;Lorg/htmlcleaner/audit/ErrorType;)V
    .locals 2

    .line 613
    iget-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->htmlModificationListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/htmlcleaner/audit/HtmlModificationListener;

    .line 614
    invoke-interface {v1, p1, p2, p3}, Lorg/htmlcleaner/audit/HtmlModificationListener;->fireUserDefinedModification(ZLorg/htmlcleaner/TagNode;Lorg/htmlcleaner/audit/ErrorType;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAllowTagSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/htmlcleaner/conditional/ITagNodeCondition;",
            ">;"
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->allowTagSet:Ljava/util/Set;

    return-object v0
.end method

.method public getAllowTags()Ljava/lang/String;
    .locals 1

    .line 427
    iget-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->allowTags:Ljava/lang/String;

    return-object v0
.end method

.method public getBooleanAttributeValues()Ljava/lang/String;
    .locals 1

    .line 481
    iget-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->booleanAttributeValues:Ljava/lang/String;

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .line 477
    iget-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getCleanerTransformations()Lorg/htmlcleaner/CleanerTransformations;
    .locals 1

    .line 572
    iget-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->cleanerTransformations:Lorg/htmlcleaner/CleanerTransformations;

    return-object v0
.end method

.method public getHtmlVersion()I
    .locals 1

    .line 390
    iget v0, p0, Lorg/htmlcleaner/CleanerProperties;->htmlVersion:I

    return v0
.end method

.method public getHyphenReplacementInComment()Ljava/lang/String;
    .locals 1

    .line 346
    iget-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->hyphenReplacementInComment:Ljava/lang/String;

    return-object v0
.end method

.method public getInvalidXmlAttributeNamePrefix()Ljava/lang/String;
    .locals 1

    .line 623
    iget-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->invalidAttributeNamePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getPruneTagSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/htmlcleaner/conditional/ITagNodeCondition;",
            ">;"
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->pruneTagSet:Ljava/util/Set;

    return-object v0
.end method

.method public getPruneTags()Ljava/lang/String;
    .locals 1

    .line 354
    iget-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->pruneTags:Ljava/lang/String;

    return-object v0
.end method

.method public getTagInfoProvider()Lorg/htmlcleaner/ITagInfoProvider;
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->tagInfoProvider:Lorg/htmlcleaner/ITagInfoProvider;

    return-object v0
.end method

.method public getUseCdataFor()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->useCdataFor:Ljava/lang/String;

    return-object v0
.end method

.method public isAddNewlineToHeadAndBody()Z
    .locals 1

    .line 330
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->addNewlineToHeadAndBody:Z

    return v0
.end method

.method public isAdvancedXmlEscape()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->advancedXmlEscape:Z

    return v0
.end method

.method public isAllowHtmlInsideAttributes()Z
    .locals 1

    .line 306
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->allowHtmlInsideAttributes:Z

    return v0
.end method

.method public isAllowInvalidAttributeNames()Z
    .locals 1

    .line 650
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->allowInvalidAttributeNames:Z

    return v0
.end method

.method public isAllowMultiWordAttributes()Z
    .locals 1

    .line 298
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->allowMultiWordAttributes:Z

    return v0
.end method

.method public isDeserializeEntities()Z
    .locals 1

    .line 365
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->deserializeEntities:Z

    return v0
.end method

.method public isIgnoreQuestAndExclam()Z
    .locals 1

    .line 314
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->ignoreQuestAndExclam:Z

    return v0
.end method

.method public isKeepWhitespaceAndCommentsInHead()Z
    .locals 1

    .line 338
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->keepWhitespaceAndCommentsInHead:Z

    return v0
.end method

.method public isNamespacesAware()Z
    .locals 1

    .line 322
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->namespacesAware:Z

    return v0
.end method

.method public isOmitCdataOutsideScriptAndStyle()Z
    .locals 1

    .line 358
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->omitCdataOutsideScriptAndStyle:Z

    return v0
.end method

.method public isOmitComments()Z
    .locals 1

    .line 254
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->omitComments:Z

    return v0
.end method

.method public isOmitDeprecatedTags()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->omitDeprecatedTags:Z

    return v0
.end method

.method public isOmitDoctypeDeclaration()Z
    .locals 2

    .line 274
    iget-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->omitDoctypeDeclaration:Lorg/htmlcleaner/OptionalOutput;

    sget-object v1, Lorg/htmlcleaner/OptionalOutput;->omit:Lorg/htmlcleaner/OptionalOutput;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/htmlcleaner/CleanerProperties;->isOmitHtmlEnvelope()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isOmitHtmlEnvelope()Z
    .locals 2

    .line 282
    iget-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->omitHtmlEnvelope:Lorg/htmlcleaner/OptionalOutput;

    sget-object v1, Lorg/htmlcleaner/OptionalOutput;->omit:Lorg/htmlcleaner/OptionalOutput;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOmitUnknownTags()Z
    .locals 1

    .line 222
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->omitUnknownTags:Z

    return v0
.end method

.method public isOmitXmlDeclaration()Z
    .locals 2

    .line 262
    iget-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->omitXmlDeclaration:Lorg/htmlcleaner/OptionalOutput;

    sget-object v1, Lorg/htmlcleaner/OptionalOutput;->omit:Lorg/htmlcleaner/OptionalOutput;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRecognizeUnicodeChars()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->recognizeUnicodeChars:Z

    return v0
.end method

.method public isTransResCharsToNCR()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->transResCharsToNCR:Z

    return v0
.end method

.method public isTransSpecialEntitiesToNCR()Z
    .locals 1

    .line 442
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->transSpecialEntitiesToNCR:Z

    return v0
.end method

.method public isTranslateSpecialEntities()Z
    .locals 1

    .line 202
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->translateSpecialEntities:Z

    return v0
.end method

.method public isTreatDeprecatedTagsAsContent()Z
    .locals 1

    .line 246
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->treatDeprecatedTagsAsContent:Z

    return v0
.end method

.method public isTreatUnknownTagsAsContent()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->treatUnknownTagsAsContent:Z

    return v0
.end method

.method public isTrimAttributeValues()Z
    .locals 1

    .line 394
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->trimAttributeValues:Z

    return v0
.end method

.method public isUseCdataFor(Ljava/lang/String;)Z
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->useCdataForList:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 196
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isUseCdataForScriptAndStyle()Z
    .locals 1

    const-string v0, "script"

    .line 168
    invoke-virtual {p0, v0}, Lorg/htmlcleaner/CleanerProperties;->isUseCdataFor(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "style"

    invoke-virtual {p0, v0}, Lorg/htmlcleaner/CleanerProperties;->isUseCdataFor(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUseEmptyElementTags()Z
    .locals 1

    .line 290
    iget-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->useEmptyElementTags:Z

    return v0
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x1

    .line 524
    iput-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->advancedXmlEscape:Z

    const-string v1, "script,style"

    .line 525
    invoke-virtual {p0, v1}, Lorg/htmlcleaner/CleanerProperties;->setUseCdataFor(Ljava/lang/String;)V

    .line 526
    iput-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->translateSpecialEntities:Z

    .line 527
    iput-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->recognizeUnicodeChars:Z

    const/4 v1, 0x0

    .line 528
    iput-boolean v1, p0, Lorg/htmlcleaner/CleanerProperties;->omitUnknownTags:Z

    .line 529
    iput-boolean v1, p0, Lorg/htmlcleaner/CleanerProperties;->treatUnknownTagsAsContent:Z

    .line 530
    iput-boolean v1, p0, Lorg/htmlcleaner/CleanerProperties;->omitDeprecatedTags:Z

    .line 531
    iput-boolean v1, p0, Lorg/htmlcleaner/CleanerProperties;->treatDeprecatedTagsAsContent:Z

    .line 532
    iput-boolean v1, p0, Lorg/htmlcleaner/CleanerProperties;->omitComments:Z

    .line 533
    sget-object v2, Lorg/htmlcleaner/OptionalOutput;->alwaysOutput:Lorg/htmlcleaner/OptionalOutput;

    iput-object v2, p0, Lorg/htmlcleaner/CleanerProperties;->omitXmlDeclaration:Lorg/htmlcleaner/OptionalOutput;

    .line 534
    sget-object v2, Lorg/htmlcleaner/OptionalOutput;->alwaysOutput:Lorg/htmlcleaner/OptionalOutput;

    iput-object v2, p0, Lorg/htmlcleaner/CleanerProperties;->omitDoctypeDeclaration:Lorg/htmlcleaner/OptionalOutput;

    .line 535
    sget-object v2, Lorg/htmlcleaner/OptionalOutput;->alwaysOutput:Lorg/htmlcleaner/OptionalOutput;

    iput-object v2, p0, Lorg/htmlcleaner/CleanerProperties;->omitHtmlEnvelope:Lorg/htmlcleaner/OptionalOutput;

    .line 536
    iput-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->useEmptyElementTags:Z

    .line 537
    iput-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->allowMultiWordAttributes:Z

    .line 538
    iput-boolean v1, p0, Lorg/htmlcleaner/CleanerProperties;->allowHtmlInsideAttributes:Z

    .line 539
    iput-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->ignoreQuestAndExclam:Z

    .line 540
    iput-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->namespacesAware:Z

    .line 541
    iput-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->addNewlineToHeadAndBody:Z

    .line 542
    iput-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->keepWhitespaceAndCommentsInHead:Z

    const-string v2, "="

    .line 543
    iput-object v2, p0, Lorg/htmlcleaner/CleanerProperties;->hyphenReplacementInComment:Ljava/lang/String;

    const/4 v2, 0x0

    .line 544
    invoke-virtual {p0, v2}, Lorg/htmlcleaner/CleanerProperties;->setPruneTags(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p0, v2}, Lorg/htmlcleaner/CleanerProperties;->setAllowTags(Ljava/lang/String;)V

    const-string v2, "self"

    .line 546
    iput-object v2, p0, Lorg/htmlcleaner/CleanerProperties;->booleanAttributeValues:Ljava/lang/String;

    const-string v2, "UTF-8"

    .line 547
    iput-object v2, p0, Lorg/htmlcleaner/CleanerProperties;->charset:Ljava/lang/String;

    .line 548
    iget-object v2, p0, Lorg/htmlcleaner/CleanerProperties;->cleanerTransformations:Lorg/htmlcleaner/CleanerTransformations;

    invoke-virtual {v2}, Lorg/htmlcleaner/CleanerTransformations;->clear()V

    .line 549
    invoke-direct {p0}, Lorg/htmlcleaner/CleanerProperties;->resetPruneTagSet()V

    .line 550
    invoke-virtual {p0}, Lorg/htmlcleaner/CleanerProperties;->getHtmlVersion()I

    move-result v2

    sget v3, Lorg/htmlcleaner/HtmlCleaner;->HTML_4:I

    if-ne v2, v3, :cond_0

    .line 551
    sget-object v2, Lorg/htmlcleaner/Html4TagProvider;->INSTANCE:Lorg/htmlcleaner/Html4TagProvider;

    iput-object v2, p0, Lorg/htmlcleaner/CleanerProperties;->tagInfoProvider:Lorg/htmlcleaner/ITagInfoProvider;

    goto :goto_0

    .line 554
    :cond_0
    sget-object v2, Lorg/htmlcleaner/Html5TagProvider;->INSTANCE:Lorg/htmlcleaner/Html5TagProvider;

    iput-object v2, p0, Lorg/htmlcleaner/CleanerProperties;->tagInfoProvider:Lorg/htmlcleaner/ITagInfoProvider;

    .line 556
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/htmlcleaner/CleanerProperties;->htmlModificationListeners:Ljava/util/List;

    .line 557
    iput-boolean v1, p0, Lorg/htmlcleaner/CleanerProperties;->omitCdataOutsideScriptAndStyle:Z

    .line 558
    iput-boolean v0, p0, Lorg/htmlcleaner/CleanerProperties;->trimAttributeValues:Z

    const-string v0, ""

    .line 559
    iput-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->invalidAttributeNamePrefix:Ljava/lang/String;

    .line 560
    iput-boolean v1, p0, Lorg/htmlcleaner/CleanerProperties;->allowInvalidAttributeNames:Z

    return-void
.end method

.method public setAddNewlineToHeadAndBody(Z)V
    .locals 0

    .line 334
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->addNewlineToHeadAndBody:Z

    return-void
.end method

.method public setAdvancedXmlEscape(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->advancedXmlEscape:Z

    return-void
.end method

.method public setAllowHtmlInsideAttributes(Z)V
    .locals 0

    .line 310
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->allowHtmlInsideAttributes:Z

    return-void
.end method

.method public setAllowInvalidAttributeNames(Z)V
    .locals 0

    .line 641
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->allowInvalidAttributeNames:Z

    return-void
.end method

.method public setAllowMultiWordAttributes(Z)V
    .locals 0

    .line 302
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->allowMultiWordAttributes:Z

    return-void
.end method

.method public setAllowTags(Ljava/lang/String;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lorg/htmlcleaner/CleanerProperties;->allowTags:Ljava/lang/String;

    .line 432
    invoke-direct {p0, p1}, Lorg/htmlcleaner/CleanerProperties;->setAllowTagSet(Ljava/lang/String;)V

    return-void
.end method

.method public setBooleanAttributeValues(Ljava/lang/String;)V
    .locals 2

    const-string v0, "self"

    .line 485
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "empty"

    .line 486
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "true"

    .line 487
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 490
    :cond_0
    iput-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->booleanAttributeValues:Ljava/lang/String;

    goto :goto_1

    .line 488
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/htmlcleaner/CleanerProperties;->booleanAttributeValues:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lorg/htmlcleaner/CleanerProperties;->charset:Ljava/lang/String;

    return-void
.end method

.method public setCleanerTransformations(Lorg/htmlcleaner/CleanerTransformations;)V
    .locals 0

    if-nez p1, :cond_0

    .line 577
    iget-object p1, p0, Lorg/htmlcleaner/CleanerProperties;->cleanerTransformations:Lorg/htmlcleaner/CleanerTransformations;

    invoke-virtual {p1}, Lorg/htmlcleaner/CleanerTransformations;->clear()V

    goto :goto_0

    .line 579
    :cond_0
    iput-object p1, p0, Lorg/htmlcleaner/CleanerProperties;->cleanerTransformations:Lorg/htmlcleaner/CleanerTransformations;

    :goto_0
    return-void
.end method

.method public setDeserializeEntities(Z)V
    .locals 0

    .line 369
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->deserializeEntities:Z

    return-void
.end method

.method public setHtmlVersion(I)V
    .locals 1

    .line 378
    iput p1, p0, Lorg/htmlcleaner/CleanerProperties;->htmlVersion:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 380
    sget-object p1, Lorg/htmlcleaner/Html4TagProvider;->INSTANCE:Lorg/htmlcleaner/Html4TagProvider;

    invoke-virtual {p0, p1}, Lorg/htmlcleaner/CleanerProperties;->setTagInfoProvider(Lorg/htmlcleaner/ITagInfoProvider;)V

    goto :goto_0

    .line 382
    :cond_0
    sget-object p1, Lorg/htmlcleaner/Html5TagProvider;->INSTANCE:Lorg/htmlcleaner/Html5TagProvider;

    invoke-virtual {p0, p1}, Lorg/htmlcleaner/CleanerProperties;->setTagInfoProvider(Lorg/htmlcleaner/ITagInfoProvider;)V

    :goto_0
    return-void
.end method

.method public setHyphenReplacementInComment(Ljava/lang/String;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lorg/htmlcleaner/CleanerProperties;->hyphenReplacementInComment:Ljava/lang/String;

    return-void
.end method

.method public setIgnoreQuestAndExclam(Z)V
    .locals 0

    .line 318
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->ignoreQuestAndExclam:Z

    return-void
.end method

.method public setInvalidXmlAttributeNamePrefix(Ljava/lang/String;)V
    .locals 0

    .line 632
    iput-object p1, p0, Lorg/htmlcleaner/CleanerProperties;->invalidAttributeNamePrefix:Ljava/lang/String;

    return-void
.end method

.method public setKeepWhitespaceAndCommentsInHead(Z)V
    .locals 0

    .line 342
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->keepWhitespaceAndCommentsInHead:Z

    return-void
.end method

.method public setNamespacesAware(Z)V
    .locals 0

    .line 326
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->namespacesAware:Z

    return-void
.end method

.method public setOmitCdataOutsideScriptAndStyle(Z)V
    .locals 0

    .line 361
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->omitCdataOutsideScriptAndStyle:Z

    return-void
.end method

.method public setOmitComments(Z)V
    .locals 0

    .line 258
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->omitComments:Z

    return-void
.end method

.method public setOmitDeprecatedTags(Z)V
    .locals 0

    .line 242
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->omitDeprecatedTags:Z

    return-void
.end method

.method public setOmitDoctypeDeclaration(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 278
    sget-object p1, Lorg/htmlcleaner/OptionalOutput;->omit:Lorg/htmlcleaner/OptionalOutput;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/htmlcleaner/OptionalOutput;->alwaysOutput:Lorg/htmlcleaner/OptionalOutput;

    :goto_0
    iput-object p1, p0, Lorg/htmlcleaner/CleanerProperties;->omitDoctypeDeclaration:Lorg/htmlcleaner/OptionalOutput;

    return-void
.end method

.method public setOmitHtmlEnvelope(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 286
    sget-object p1, Lorg/htmlcleaner/OptionalOutput;->omit:Lorg/htmlcleaner/OptionalOutput;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/htmlcleaner/OptionalOutput;->alwaysOutput:Lorg/htmlcleaner/OptionalOutput;

    :goto_0
    iput-object p1, p0, Lorg/htmlcleaner/CleanerProperties;->omitHtmlEnvelope:Lorg/htmlcleaner/OptionalOutput;

    return-void
.end method

.method public setOmitUnknownTags(Z)V
    .locals 0

    .line 226
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->omitUnknownTags:Z

    return-void
.end method

.method public setOmitXmlDeclaration(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 266
    sget-object p1, Lorg/htmlcleaner/OptionalOutput;->omit:Lorg/htmlcleaner/OptionalOutput;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/htmlcleaner/OptionalOutput;->alwaysOutput:Lorg/htmlcleaner/OptionalOutput;

    :goto_0
    iput-object p1, p0, Lorg/htmlcleaner/CleanerProperties;->omitXmlDeclaration:Lorg/htmlcleaner/OptionalOutput;

    return-void
.end method

.method public setPruneTags(Ljava/lang/String;)V
    .locals 1

    .line 408
    iput-object p1, p0, Lorg/htmlcleaner/CleanerProperties;->pruneTags:Ljava/lang/String;

    .line 409
    invoke-direct {p0}, Lorg/htmlcleaner/CleanerProperties;->resetPruneTagSet()V

    .line 410
    iget-object v0, p0, Lorg/htmlcleaner/CleanerProperties;->pruneTagSet:Ljava/util/Set;

    invoke-direct {p0, v0, p1}, Lorg/htmlcleaner/CleanerProperties;->addTagNameConditions(Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method

.method public setRecognizeUnicodeChars(Z)V
    .locals 0

    .line 218
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->recognizeUnicodeChars:Z

    return-void
.end method

.method setTagInfoProvider(Lorg/htmlcleaner/ITagInfoProvider;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lorg/htmlcleaner/CleanerProperties;->tagInfoProvider:Lorg/htmlcleaner/ITagInfoProvider;

    return-void
.end method

.method public setTransResCharsToNCR(Z)V
    .locals 0

    .line 164
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->transResCharsToNCR:Z

    return-void
.end method

.method public setTransSpecialEntitiesToNCR(Z)V
    .locals 0

    .line 446
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->transSpecialEntitiesToNCR:Z

    return-void
.end method

.method public setTranslateSpecialEntities(Z)V
    .locals 0

    .line 210
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->translateSpecialEntities:Z

    return-void
.end method

.method public setTreatDeprecatedTagsAsContent(Z)V
    .locals 0

    .line 250
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->treatDeprecatedTagsAsContent:Z

    return-void
.end method

.method public setTreatUnknownTagsAsContent(Z)V
    .locals 0

    .line 234
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->treatUnknownTagsAsContent:Z

    return-void
.end method

.method public setTrimAttributeValues(Z)V
    .locals 0

    .line 398
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->trimAttributeValues:Z

    return-void
.end method

.method public setUseCdataFor(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 180
    iput-object p1, p0, Lorg/htmlcleaner/CleanerProperties;->useCdataFor:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/htmlcleaner/CleanerProperties;->useCdataForList:Ljava/util/List;

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 183
    iput-object p1, p0, Lorg/htmlcleaner/CleanerProperties;->useCdataFor:Ljava/lang/String;

    const/4 p1, 0x0

    .line 184
    iput-object p1, p0, Lorg/htmlcleaner/CleanerProperties;->useCdataForList:Ljava/util/List;

    :goto_0
    return-void
.end method

.method public setUseCdataForScriptAndStyle(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "script,style"

    .line 173
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/CleanerProperties;->setUseCdataFor(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 175
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/CleanerProperties;->setUseCdataFor(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setUseEmptyElementTags(Z)V
    .locals 0

    .line 294
    iput-boolean p1, p0, Lorg/htmlcleaner/CleanerProperties;->useEmptyElementTags:Z

    return-void
.end method
