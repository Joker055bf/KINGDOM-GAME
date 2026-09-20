.class public Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;
.super Ljava/lang/Object;
.source "HtmlSpanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner$CancellationCallback;
    }
.end annotation


# static fields
.field public static HORIZONTAL_EM_WIDTH:I = 0xa


# instance fields
.field private allowStyling:Z

.field private contrastPatcher:Lcom/tgs/aics/thirdtool/htmlspanner/ContrastPatcher;

.field private fontResolver:Lcom/tgs/aics/thirdtool/htmlspanner/FontResolver;

.field private handlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;",
            ">;"
        }
    .end annotation
.end field

.field private htmlCleaner:Lorg/htmlcleaner/HtmlCleaner;

.field private paddingSize:I

.field private stripExtraWhiteSpace:Z

.field private useColoursFromStyle:Z

.field private useFontSizeFromStyle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 111
    invoke-static {}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->createHtmlCleaner()Lorg/htmlcleaner/HtmlCleaner;

    move-result-object v0

    new-instance v1, Lcom/tgs/aics/thirdtool/htmlspanner/SystemFontResolver;

    invoke-direct {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/SystemFontResolver;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;-><init>(Lorg/htmlcleaner/HtmlCleaner;Lcom/tgs/aics/thirdtool/htmlspanner/FontResolver;I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 115
    invoke-static {}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->createHtmlCleaner()Lorg/htmlcleaner/HtmlCleaner;

    move-result-object v0

    new-instance v1, Lcom/tgs/aics/thirdtool/htmlspanner/SystemFontResolver;

    invoke-direct {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/SystemFontResolver;-><init>()V

    invoke-direct {p0, v0, v1, p1}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;-><init>(Lorg/htmlcleaner/HtmlCleaner;Lcom/tgs/aics/thirdtool/htmlspanner/FontResolver;I)V

    return-void
.end method

.method public constructor <init>(Lorg/htmlcleaner/HtmlCleaner;Lcom/tgs/aics/thirdtool/htmlspanner/FontResolver;I)V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->stripExtraWhiteSpace:Z

    .line 79
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner$1;

    invoke-direct {v0, p0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner$1;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;)V

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->contrastPatcher:Lcom/tgs/aics/thirdtool/htmlspanner/ContrastPatcher;

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->allowStyling:Z

    .line 99
    iput-boolean v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->useColoursFromStyle:Z

    .line 104
    iput-boolean v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->useFontSizeFromStyle:Z

    .line 126
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->htmlCleaner:Lorg/htmlcleaner/HtmlCleaner;

    .line 127
    iput-object p2, p0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->fontResolver:Lcom/tgs/aics/thirdtool/htmlspanner/FontResolver;

    .line 128
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->handlers:Ljava/util/Map;

    .line 129
    iput p3, p0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->paddingSize:I

    .line 131
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerBuiltInHandlers()V

    return-void
.end method

.method private applySpan(Landroid/text/SpannableStringBuilder;Lorg/htmlcleaner/TagNode;Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner$CancellationCallback;)V
    .locals 7

    .line 407
    invoke-direct {p0, p4}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->checkForCancellation(Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner$CancellationCallback;)V

    .line 409
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->handlers:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;

    if-nez v0, :cond_0

    .line 412
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;

    invoke-direct {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;-><init>()V

    .line 413
    invoke-virtual {v0, p0}, Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;->setSpanner(Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;)V

    :cond_0
    move-object v1, v0

    .line 416
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 418
    invoke-virtual {v1, p2, p1, p3}, Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;->beforeChildren(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V

    .line 420
    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;->rendersContent()Z

    move-result v0

    if-nez v0, :cond_3

    .line 422
    invoke-virtual {p2}, Lorg/htmlcleaner/TagNode;->getAllChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 424
    instance-of v3, v2, Lorg/htmlcleaner/ContentNode;

    if-eqz v3, :cond_2

    .line 425
    invoke-direct {p0, p1, v2, p3, p4}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->handleContent(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner$CancellationCallback;)V

    goto :goto_0

    .line 426
    :cond_2
    instance-of v3, v2, Lorg/htmlcleaner/TagNode;

    if-eqz v3, :cond_1

    .line 427
    check-cast v2, Lorg/htmlcleaner/TagNode;

    invoke-direct {p0, p1, v2, p3, p4}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->applySpan(Landroid/text/SpannableStringBuilder;Lorg/htmlcleaner/TagNode;Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner$CancellationCallback;)V

    goto :goto_0

    .line 432
    :cond_3
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    move-object v2, p2

    move-object v3, p1

    move-object v6, p3

    .line 433
    invoke-virtual/range {v1 .. v6}, Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;->handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;IILcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V

    return-void
.end method

.method private checkForCancellation(Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner$CancellationCallback;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 379
    invoke-interface {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner$CancellationCallback;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 380
    :cond_0
    new-instance p1, Lcom/tgs/aics/thirdtool/htmlspanner/exception/ParsingCancelledException;

    invoke-direct {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/exception/ParsingCancelledException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private static createHtmlCleaner()Lorg/htmlcleaner/HtmlCleaner;
    .locals 4

    .line 358
    new-instance v0, Lorg/htmlcleaner/HtmlCleaner;

    invoke-direct {v0}, Lorg/htmlcleaner/HtmlCleaner;-><init>()V

    .line 359
    invoke-virtual {v0}, Lorg/htmlcleaner/HtmlCleaner;->getProperties()Lorg/htmlcleaner/CleanerProperties;

    move-result-object v1

    const/4 v2, 0x1

    .line 361
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/CleanerProperties;->setAdvancedXmlEscape(Z)V

    .line 363
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/CleanerProperties;->setOmitXmlDeclaration(Z)V

    const/4 v3, 0x0

    .line 364
    invoke-virtual {v1, v3}, Lorg/htmlcleaner/CleanerProperties;->setOmitDoctypeDeclaration(Z)V

    .line 366
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/CleanerProperties;->setTranslateSpecialEntities(Z)V

    .line 367
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/CleanerProperties;->setTransResCharsToNCR(Z)V

    .line 368
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/CleanerProperties;->setRecognizeUnicodeChars(Z)V

    .line 370
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/CleanerProperties;->setIgnoreQuestAndExclam(Z)V

    .line 371
    invoke-virtual {v1, v3}, Lorg/htmlcleaner/CleanerProperties;->setUseEmptyElementTags(Z)V

    const-string v2, "script,title"

    .line 373
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/CleanerProperties;->setPruneTags(Ljava/lang/String;)V

    return-object v0
.end method

.method private fromTagNode(Lorg/htmlcleaner/TagNode;Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner$CancellationCallback;)Landroid/text/Spannable;
    .locals 2

    .line 272
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 273
    new-instance v1, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;

    invoke-direct {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;-><init>()V

    .line 275
    invoke-direct {p0, p2, v1}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->parseCSSFromText(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V

    .line 276
    invoke-direct {p0, v0, p1, v1, p3}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->applySpan(Landroid/text/SpannableStringBuilder;Lorg/htmlcleaner/TagNode;Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner$CancellationCallback;)V

    .line 278
    invoke-virtual {v1, p0, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;->applySpans(Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;Landroid/text/SpannableStringBuilder;)V

    return-object v0
.end method

.method private handleContent(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner$CancellationCallback;)V
    .locals 0

    .line 387
    invoke-direct {p0, p4}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->checkForCancellation(Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner$CancellationCallback;)V

    .line 389
    check-cast p2, Lorg/htmlcleaner/ContentNode;

    .line 392
    invoke-virtual {p2}, Lorg/htmlcleaner/ContentNode;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 391
    invoke-static {p2, p3}, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->replaceHtmlEntities(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    .line 394
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->isStripExtraWhiteSpace()Z

    move-result p3

    if-eqz p3, :cond_0

    const/16 p3, 0xa0

    const/16 p4, 0x20

    .line 396
    invoke-virtual {p2, p3, p4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 399
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_1

    .line 400
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1
    return-void
.end method

.method private parseCSSFromText(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V
    .locals 1

    .line 285
    :try_start_0
    invoke-static {p1}, Lcom/osbcp/cssparser/CSSParser;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/osbcp/cssparser/Rule;

    .line 286
    invoke-static {v0, p0}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler;->compile(Lcom/osbcp/cssparser/Rule;Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;)Lcom/tgs/aics/thirdtool/htmlspanner/css/CompiledRule;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;->registerCompiledRule(Lcom/tgs/aics/thirdtool/htmlspanner/css/CompiledRule;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 289
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private registerBuiltInHandlers()V
    .locals 6

    .line 443
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;

    new-instance v1, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-direct {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;-><init>()V

    sget-object v2, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;->ITALIC:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    .line 444
    invoke-virtual {v1, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->setFontStyle(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;)V

    const-string v1, "i"

    .line 446
    invoke-virtual {p0, v1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    const-string v1, "em"

    .line 447
    invoke-virtual {p0, v1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    const-string v1, "cite"

    .line 448
    invoke-virtual {p0, v1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    const-string v1, "dfn"

    .line 449
    invoke-virtual {p0, v1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    .line 451
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;

    new-instance v1, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-direct {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;-><init>()V

    sget-object v2, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;->BOLD:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;

    .line 452
    invoke-virtual {v1, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->setFontWeight(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;)V

    .line 454
    new-instance v1, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/UnderlineHandler;

    invoke-direct {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/UnderlineHandler;-><init>()V

    const-string v2, "u"

    invoke-virtual {p0, v2, v1}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    const-string v1, "b"

    .line 455
    invoke-virtual {p0, v1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    const-string v1, "strong"

    .line 456
    invoke-virtual {p0, v1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    .line 458
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;

    new-instance v1, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-direct {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;-><init>()V

    new-instance v2, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    const/high16 v3, 0x40000000    # 2.0f

    sget-object v4, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;->EM:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    invoke-direct {v2, v3, v4}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;-><init>(FLcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;)V

    .line 459
    invoke-virtual {v1, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->setMarginLeft(Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;)V

    const-string v1, "blockquote"

    .line 461
    invoke-virtual {p0, v1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    const-string v1, "ul"

    .line 462
    invoke-virtual {p0, v1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    const-string v1, "ol"

    .line 463
    invoke-virtual {p0, v1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    .line 465
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/MonoSpaceHandler;

    invoke-direct {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/MonoSpaceHandler;-><init>()V

    invoke-static {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->wrap(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;)Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;

    move-result-object v0

    const-string v1, "tt"

    .line 467
    invoke-virtual {p0, v1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    const-string v1, "code"

    .line 468
    invoke-virtual {p0, v1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    .line 470
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyleNodeHandler;

    invoke-direct {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyleNodeHandler;-><init>()V

    const-string v1, "style"

    invoke-virtual {p0, v1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    .line 475
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;

    invoke-direct {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;-><init>()V

    invoke-static {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->wrap(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;)Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;

    move-result-object v0

    .line 476
    new-instance v1, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/NewLineHandler;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/NewLineHandler;-><init>(ILcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    const-string v0, "br"

    .line 478
    invoke-virtual {p0, v0, v1}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    .line 480
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-direct {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;-><init>()V

    sget-object v1, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;->BLOCK:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;

    .line 481
    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->setDisplayStyle(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object v0

    new-instance v1, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    sget-object v2, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;->EM:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;-><init>(FLcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;)V

    .line 482
    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->setMarginBottom(Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object v0

    .line 486
    new-instance v1, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/attributes/BorderAttributeHandler;

    new-instance v2, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;

    invoke-direct {v2, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;)V

    invoke-static {v2}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->wrap(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;)Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/attributes/BorderAttributeHandler;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;)V

    const-string v0, "p"

    .line 488
    invoke-virtual {p0, v0, v1}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    const-string v0, "div"

    .line 489
    invoke-virtual {p0, v0, v1}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    .line 491
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/HeaderHandler;

    const/high16 v1, 0x3fc00000    # 1.5f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/HeaderHandler;-><init>(FF)V

    invoke-static {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->wrap(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;)Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;

    move-result-object v0

    const-string v1, "h1"

    invoke-virtual {p0, v1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    .line 492
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/HeaderHandler;

    const v1, 0x3fb33333

    const v2, 0x3f19999a

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/HeaderHandler;-><init>(FF)V

    invoke-static {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->wrap(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;)Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;

    move-result-object v0

    const-string v1, "h2"

    invoke-virtual {p0, v1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    .line 493
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/HeaderHandler;

    const v1, 0x3fa66666

    const v2, 0x3f333333

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/HeaderHandler;-><init>(FF)V

    invoke-static {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->wrap(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;)Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;

    move-result-object v0

    const-string v1, "h3"

    invoke-virtual {p0, v1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    .line 494
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/HeaderHandler;

    const v1, 0x3f99999a

    const v2, 0x3f4ccccd

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/HeaderHandler;-><init>(FF)V

    invoke-static {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->wrap(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;)Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;

    move-result-object v0

    const-string v1, "h4"

    invoke-virtual {p0, v1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    .line 495
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/HeaderHandler;

    const v1, 0x3f8ccccd

    const v4, 0x3f666666

    invoke-direct {v0, v1, v4}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/HeaderHandler;-><init>(FF)V

    invoke-static {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->wrap(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;)Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;

    move-result-object v0

    const-string v1, "h5"

    invoke-virtual {p0, v1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    .line 496
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/HeaderHandler;

    invoke-direct {v0, v3, v3}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/HeaderHandler;-><init>(FF)V

    invoke-static {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->wrap(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;)Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;

    move-result-object v0

    const-string v1, "h6"

    invoke-virtual {p0, v1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    .line 498
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/PreHandler;

    invoke-direct {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/PreHandler;-><init>()V

    const-string v1, "pre"

    .line 499
    invoke-virtual {p0, v1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    .line 501
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;

    new-instance v1, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-direct {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;-><init>()V

    new-instance v3, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    const/high16 v4, 0x3fa00000    # 1.25f

    sget-object v5, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;->EM:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    invoke-direct {v3, v4, v5}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;-><init>(FLcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;)V

    .line 502
    invoke-virtual {v1, v3}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->setFontSize(Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;)V

    const-string v1, "big"

    .line 505
    invoke-virtual {p0, v1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    .line 507
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;

    new-instance v1, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-direct {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;-><init>()V

    new-instance v3, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    sget-object v4, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;->EM:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    invoke-direct {v3, v2, v4}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;-><init>(FLcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;)V

    .line 508
    invoke-virtual {v1, v3}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->setFontSize(Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;)V

    const-string v1, "small"

    .line 511
    invoke-virtual {p0, v1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    .line 513
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/SubScriptHandler;

    invoke-direct {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/SubScriptHandler;-><init>()V

    const-string v1, "sub"

    .line 514
    invoke-virtual {p0, v1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    .line 516
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/SuperScriptHandler;

    invoke-direct {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/SuperScriptHandler;-><init>()V

    const-string v1, "sup"

    .line 517
    invoke-virtual {p0, v1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    .line 519
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;

    new-instance v1, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-direct {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;-><init>()V

    sget-object v2, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;->CENTER:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    invoke-virtual {v1, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->setTextAlignment(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;)V

    const-string v1, "center"

    .line 520
    invoke-virtual {p0, v1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    .line 522
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/ListItemHandler;

    invoke-direct {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/ListItemHandler;-><init>()V

    const-string v1, "li"

    invoke-virtual {p0, v1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    .line 524
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/LinkHandler;

    invoke-direct {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/LinkHandler;-><init>()V

    const-string v1, "a"

    invoke-virtual {p0, v1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    .line 525
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/ImageHandler;

    iget v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->paddingSize:I

    invoke-direct {v0, v1}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/ImageHandler;-><init>(I)V

    const-string v1, "img"

    invoke-virtual {p0, v1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    .line 527
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/FontHandler;

    invoke-direct {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/FontHandler;-><init>()V

    const-string v1, "font"

    invoke-virtual {p0, v1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    .line 529
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-direct {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;-><init>()V

    sget-object v1, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;->INLINE:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;

    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->setDisplayStyle(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object v0

    .line 530
    new-instance v1, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/attributes/BorderAttributeHandler;

    new-instance v2, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;

    invoke-direct {v2, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;)V

    invoke-static {v2}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->wrap(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;)Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/attributes/BorderAttributeHandler;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;)V

    const-string v0, "span"

    .line 531
    invoke-virtual {p0, v0, v1}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    .line 533
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/HorizontalRuleHandler;

    invoke-direct {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/HorizontalRuleHandler;-><init>()V

    const-string v1, "hr"

    invoke-virtual {p0, v1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    .line 535
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StrikeThroughHandler;

    invoke-direct {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StrikeThroughHandler;-><init>()V

    const-string v1, "del"

    invoke-virtual {p0, v1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    .line 536
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StrikeThroughHandler;

    invoke-direct {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StrikeThroughHandler;-><init>()V

    const-string v1, "s"

    invoke-virtual {p0, v1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    .line 537
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StrikeThroughHandler;

    invoke-direct {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StrikeThroughHandler;-><init>()V

    const-string v1, "strike"

    invoke-virtual {p0, v1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    return-void
.end method

.method private static wrap(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;)Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;
    .locals 2

    .line 438
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/attributes/StyleAttributeHandler;

    new-instance v1, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/attributes/AlignmentAttributeHandler;

    invoke-direct {v1, p0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/attributes/AlignmentAttributeHandler;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;)V

    invoke-direct {v0, v1}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/attributes/StyleAttributeHandler;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;)V

    return-object v0
.end method


# virtual methods
.method public fromHtml(Ljava/io/InputStream;)Landroid/text/Spannable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->htmlCleaner:Lorg/htmlcleaner/HtmlCleaner;

    invoke-virtual {v0, p1}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/io/InputStream;)Lorg/htmlcleaner/TagNode;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->fromTagNode(Lorg/htmlcleaner/TagNode;Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner$CancellationCallback;)Landroid/text/Spannable;

    move-result-object p1

    return-object p1
.end method

.method public fromHtml(Ljava/io/InputStream;Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner$CancellationCallback;)Landroid/text/Spannable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->htmlCleaner:Lorg/htmlcleaner/HtmlCleaner;

    invoke-virtual {v0, p1}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/io/InputStream;)Lorg/htmlcleaner/TagNode;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->fromTagNode(Lorg/htmlcleaner/TagNode;Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner$CancellationCallback;)Landroid/text/Spannable;

    move-result-object p1

    return-object p1
.end method

.method public fromHtml(Ljava/io/Reader;)Landroid/text/Spannable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->htmlCleaner:Lorg/htmlcleaner/HtmlCleaner;

    invoke-virtual {v0, p1}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/io/Reader;)Lorg/htmlcleaner/TagNode;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->fromTagNode(Lorg/htmlcleaner/TagNode;Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner$CancellationCallback;)Landroid/text/Spannable;

    move-result-object p1

    return-object p1
.end method

.method public fromHtml(Ljava/io/Reader;Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner$CancellationCallback;)Landroid/text/Spannable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->htmlCleaner:Lorg/htmlcleaner/HtmlCleaner;

    invoke-virtual {v0, p1}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/io/Reader;)Lorg/htmlcleaner/TagNode;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->fromTagNode(Lorg/htmlcleaner/TagNode;Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner$CancellationCallback;)Landroid/text/Spannable;

    move-result-object p1

    return-object p1
.end method

.method public fromHtml(Ljava/lang/String;)Landroid/text/Spannable;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->htmlCleaner:Lorg/htmlcleaner/HtmlCleaner;

    invoke-virtual {v0, p1}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/lang/String;)Lorg/htmlcleaner/TagNode;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->fromTagNode(Lorg/htmlcleaner/TagNode;Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner$CancellationCallback;)Landroid/text/Spannable;

    move-result-object p1

    return-object p1
.end method

.method public fromHtml(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner$CancellationCallback;)Landroid/text/Spannable;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->htmlCleaner:Lorg/htmlcleaner/HtmlCleaner;

    invoke-virtual {v0, p1}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/lang/String;)Lorg/htmlcleaner/TagNode;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->fromTagNode(Lorg/htmlcleaner/TagNode;Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner$CancellationCallback;)Landroid/text/Spannable;

    move-result-object p1

    return-object p1
.end method

.method public fromHtml(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->htmlCleaner:Lorg/htmlcleaner/HtmlCleaner;

    invoke-virtual {v0, p1}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/lang/String;)Lorg/htmlcleaner/TagNode;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->fromTagNode(Lorg/htmlcleaner/TagNode;Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner$CancellationCallback;)Landroid/text/Spannable;

    move-result-object p1

    return-object p1
.end method

.method public fromTagNode(Lorg/htmlcleaner/TagNode;Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner$CancellationCallback;)Landroid/text/Spannable;
    .locals 2

    .line 346
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 347
    new-instance v1, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;

    invoke-direct {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;-><init>()V

    .line 349
    invoke-direct {p0, v0, p1, v1, p2}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->applySpan(Landroid/text/SpannableStringBuilder;Lorg/htmlcleaner/TagNode;Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner$CancellationCallback;)V

    .line 351
    invoke-virtual {v1, p0, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;->applySpans(Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;Landroid/text/SpannableStringBuilder;)V

    return-object v0
.end method

.method public getContrastPatcher()Lcom/tgs/aics/thirdtool/htmlspanner/ContrastPatcher;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->contrastPatcher:Lcom/tgs/aics/thirdtool/htmlspanner/ContrastPatcher;

    return-object v0
.end method

.method public getFont(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->fontResolver:Lcom/tgs/aics/thirdtool/htmlspanner/FontResolver;

    invoke-interface {v0, p1}, Lcom/tgs/aics/thirdtool/htmlspanner/FontResolver;->getFont(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    move-result-object p1

    return-object p1
.end method

.method public getFontResolver()Lcom/tgs/aics/thirdtool/htmlspanner/FontResolver;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->fontResolver:Lcom/tgs/aics/thirdtool/htmlspanner/FontResolver;

    return-object v0
.end method

.method public getHandlerFor(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->handlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;

    return-object p1
.end method

.method public isAllowStyling()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->allowStyling:Z

    return v0
.end method

.method public isStripExtraWhiteSpace()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->stripExtraWhiteSpace:Z

    return v0
.end method

.method public isUseColoursFromStyle()Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->useColoursFromStyle:Z

    return v0
.end method

.method public isUseFontSizeFromStyle()Z
    .locals 1

    .line 231
    iget-boolean v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->useFontSizeFromStyle:Z

    return v0
.end method

.method public registerHandler(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->handlers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-virtual {p2, p0}, Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;->setSpanner(Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;)V

    return-void
.end method

.method public setAllowStyling(Z)V
    .locals 0

    .line 201
    iput-boolean p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->allowStyling:Z

    return-void
.end method

.method public setContrastPatcher(Lcom/tgs/aics/thirdtool/htmlspanner/ContrastPatcher;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->contrastPatcher:Lcom/tgs/aics/thirdtool/htmlspanner/ContrastPatcher;

    return-void
.end method

.method public setFontResolver(Lcom/tgs/aics/thirdtool/htmlspanner/FontResolver;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->fontResolver:Lcom/tgs/aics/thirdtool/htmlspanner/FontResolver;

    return-void
.end method

.method public setStripExtraWhiteSpace(Z)V
    .locals 0

    .line 153
    iput-boolean p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->stripExtraWhiteSpace:Z

    return-void
.end method

.method public setUseColoursFromStyle(Z)V
    .locals 0

    .line 211
    iput-boolean p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->useColoursFromStyle:Z

    return-void
.end method

.method public setUseFontSizeFromStyle(Z)V
    .locals 0

    .line 226
    iput-boolean p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->useFontSizeFromStyle:Z

    return-void
.end method

.method public unregisterHandler(Ljava/lang/String;)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->handlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
