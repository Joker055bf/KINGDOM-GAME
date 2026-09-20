.class public abstract Lcom/tgs/aics/ui/activity/BaseActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "BaseActivity.java"


# static fields
.field public static final LABEL_START_DIAGNOSE:Ljava/lang/String; = "LaunchDiagnose"

.field public static isGetNavigationBarHeight:Z = false

.field public static navigationBarHeight:I


# instance fields
.field protected imgTips:Landroid/widget/ImageView;

.field protected loadErrorLayout:Landroid/widget/FrameLayout;

.field protected loadingLayout:Landroid/widget/LinearLayout;

.field protected retryView:Landroid/widget/TextView;

.field protected txtTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tgs/aics/ui/activity/BaseActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/tgs/aics/ui/activity/BaseActivity;->addTranslucentToBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private addTranslucentToBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v0, 0x0

    .line 290
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 291
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    .line 294
    invoke-virtual {v2, p1, v3, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 297
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    const-string v3, "#88FFFFFF"

    .line 298
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 301
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float v6, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public static blur(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 3

    .line 242
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 244
    :try_start_0
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p0

    .line 245
    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object p1

    .line 246
    invoke-static {p0, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 248
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object p0

    .line 249
    invoke-virtual {p0, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 250
    invoke-virtual {p0, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 251
    invoke-virtual {p0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 253
    invoke-virtual {v1, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 255
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private isTranslucentOrFloating()Z
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.android.internal.R$styleable"

    .line 143
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Window"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 144
    invoke-virtual {p0, v1}, Lcom/tgs/aics/ui/activity/BaseActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 145
    const-class v3, Landroid/content/pm/ActivityInfo;

    const-string v4, "isTranslucentOrFloating"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/res/TypedArray;

    aput-object v7, v6, v0

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 146
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v0

    .line 147
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 148
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    .line 150
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v1
.end method

.method static synthetic lambda$addSystemUiVisibilityChangeListener$2(Landroid/view/ViewGroup;I)V
    .locals 1

    .line 230
    sget-boolean v0, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, v0, p1}, Lcom/ypx/imagepicker/utils/CommonUtil;->setSafeAreaWithNavigationBar(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic lambda$onCreate$1(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 107
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p0

    .line 108
    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    sput p0, Lcom/tgs/aics/ui/activity/BaseActivity;->navigationBarHeight:I

    const/4 p0, 0x1

    .line 109
    sput-boolean p0, Lcom/tgs/aics/ui/activity/BaseActivity;->isGetNavigationBarHeight:Z

    return-object p1
.end method

.method private languageSetting(Ljava/lang/String;)V
    .locals 2

    .line 440
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 441
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 443
    invoke-static {p1}, Lcom/ypx/imagepicker/utils/LanguageUtil;->switch2SystemLanguage(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    iput-object p1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 444
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method


# virtual methods
.method public addSystemUiVisibilityChangeListener(Landroid/view/ViewGroup;)V
    .locals 2

    .line 229
    sget-boolean v0, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/tgs/aics/ui/activity/BaseActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/tgs/aics/ui/activity/BaseActivity$$ExternalSyntheticLambda0;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    :cond_0
    return-void
.end method

.method public backFinish(Landroid/view/View;)V
    .locals 0

    .line 156
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/BaseActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    return-void
.end method

.method public convert2FormItemType(Lcom/tgs/aics/bean/FieldType;)Ljava/lang/String;
    .locals 1

    .line 397
    sget-object v0, Lcom/tgs/aics/ui/activity/BaseActivity$2;->$SwitchMap$com$tgs$aics$bean$FieldType:[I

    invoke-virtual {p1}, Lcom/tgs/aics/bean/FieldType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const-string p1, ""

    return-object p1

    :pswitch_0
    const-string p1, "upload"

    return-object p1

    :pswitch_1
    const-string p1, "video"

    return-object p1

    :pswitch_2
    const-string p1, "picture"

    return-object p1

    :pswitch_3
    const-string p1, "date_range"

    return-object p1

    :pswitch_4
    const-string p1, "date"

    return-object p1

    :pswitch_5
    const-string p1, "multiple_select"

    return-object p1

    :pswitch_6
    const-string p1, "select"

    return-object p1

    :pswitch_7
    const-string p1, "number_input"

    return-object p1

    :pswitch_8
    const-string p1, "input"

    return-object p1

    :pswitch_9
    const-string p1, "textarea"

    return-object p1

    :pswitch_a
    const-string p1, "text"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final findViewById(Ljava/lang/String;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 184
    invoke-static {p0, p1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getId(Ljava/lang/String;)I
    .locals 0

    .line 188
    invoke-static {p0, p1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getLayoutId(Ljava/lang/String;)I
    .locals 0

    .line 180
    invoke-static {p0, p1}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 192
    invoke-static {p0, p1}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUrlParamFormShowId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 376
    invoke-static {p1}, Lcom/tgs/aics/utils/UrlParseUtil;->getUrlParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "formShowId"

    .line 377
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getUrlParamId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 355
    invoke-static {p1}, Lcom/tgs/aics/utils/UrlParseUtil;->getUrlParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "id"

    .line 356
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getUrlParamLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 365
    invoke-static {p1}, Lcom/tgs/aics/utils/UrlParseUtil;->getUrlParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "language"

    .line 366
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 369
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    sget-object p1, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameLanguage:Ljava/lang/String;

    :cond_1
    return-object p1
.end method

.method public getUrlParamProvider(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 385
    invoke-static {p1}, Lcom/tgs/aics/utils/UrlParseUtil;->getUrlParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "provider"

    .line 386
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method protected abstract getViewName()Ljava/lang/String;
.end method

.method public handleUrlAction(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 328
    invoke-static {p1}, Lcom/tgs/aics/utils/UrlParseUtil;->getUrlHostAndPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "aics://detail"

    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "url"

    if-eqz v1, :cond_0

    .line 330
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/tgs/aics/ui/activity/FAQDetailActivity;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 331
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    invoke-virtual {p0, p2}, Lcom/tgs/aics/ui/activity/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v1, "aics://list"

    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/tgs/aics/ui/activity/FAQListActivity;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 335
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    invoke-virtual {p0, p2}, Lcom/tgs/aics/ui/activity/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v1, "aics://form"

    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 338
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tgs/aics/ui/activity/FormCreateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 339
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "message_id_with_form"

    .line 341
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string p1, "form_is_committed"

    .line 342
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 343
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string p2, "aics://recharge_record_query"

    .line 344
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 345
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 346
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    invoke-virtual {p0, p2}, Lcom/tgs/aics/ui/activity/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 349
    :cond_4
    invoke-static {p0, p1}, Lcom/tgs/aics/utils/Utils;->openBrowser(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public hideLoadErrorLayout()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/BaseActivity;->loadErrorLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 219
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideLoading()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/BaseActivity;->loadingLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 204
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected abstract initView()V
.end method

.method public isWebSocketConnected()Z
    .locals 1

    .line 393
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil;->webSocketService:Lcom/tgs/aics/websocket/WebSocketService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil;->webSocketService:Lcom/tgs/aics/websocket/WebSocketService;

    iget-object v0, v0, Lcom/tgs/aics/websocket/WebSocketService;->client:Lcom/tgs/aics/websocket/ChatWebSocketClient;

    invoke-virtual {v0}, Lcom/tgs/aics/websocket/ChatWebSocketClient;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$onCreate$0$com-tgs-aics-ui-activity-BaseActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 78
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/BaseActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 79
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/BaseActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x4000000

    .line 80
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 82
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/BaseActivity;->finish()V

    return-void
.end method

.method public loadBackgroundImage(Landroid/view/ViewGroup;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 266
    :cond_0
    :try_start_0
    sget-boolean p2, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    sget-boolean v0, Lcom/tgs/aics/ui/activity/BaseActivity;->isGetNavigationBarHeight:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/tgs/aics/ui/activity/BaseActivity;->navigationBarHeight:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    :goto_0
    invoke-static {p1, p2, v0}, Lcom/ypx/imagepicker/utils/CommonUtil;->setSafeArea(Landroid/view/View;ZI)V

    .line 268
    sget-object p2, Lcom/tgs/aics/utils/ConstantUtil;->customDefineParams:Lcom/tgs/aics/bean/CustomDefineParams;

    if-eqz p2, :cond_2

    sget-object p2, Lcom/tgs/aics/utils/ConstantUtil;->customDefineParams:Lcom/tgs/aics/bean/CustomDefineParams;

    invoke-virtual {p2}, Lcom/tgs/aics/bean/CustomDefineParams;->getBackgroundPicUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 269
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    .line 270
    invoke-virtual {p2}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil;->customDefineParams:Lcom/tgs/aics/bean/CustomDefineParams;

    .line 271
    invoke-virtual {v0}, Lcom/tgs/aics/bean/CustomDefineParams;->getBackgroundPicUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    new-instance v0, Lcom/tgs/aics/ui/activity/BaseActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/tgs/aics/ui/activity/BaseActivity$1;-><init>(Lcom/tgs/aics/ui/activity/BaseActivity;Landroid/view/ViewGroup;)V

    .line 272
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 435
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameLanguage:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tgs/aics/ui/activity/BaseActivity;->languageSetting(Ljava/lang/String;)V

    .line 436
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 70
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 72
    invoke-static {p0}, Lcom/tgs/aics/utils/Utils;->getGameLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tgs/aics/ui/activity/BaseActivity;->languageSetting(Ljava/lang/String;)V

    .line 74
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "tgs_aics_permission_downgrade_tip"

    .line 75
    invoke-virtual {p0, v1}, Lcom/tgs/aics/ui/activity/BaseActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 76
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v0, "tgs_aics_permission_downgrade_button_text"

    .line 77
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/BaseActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tgs/aics/ui/activity/BaseActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/BaseActivity$$ExternalSyntheticLambda1;-><init>(Lcom/tgs/aics/ui/activity/BaseActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 84
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 88
    :cond_0
    sget-object p1, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameLanguage:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/tgs/aics/ui/activity/BaseActivity;->languageSetting(Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/BaseActivity;->isTranslucentOrFloating()Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_3

    .line 90
    sget-boolean p1, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    if-eqz p1, :cond_1

    .line 91
    sget-boolean p1, Lcom/tgs/aics/utils/ConstantUtil;->isReverseLandscape:Z

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    move v0, v1

    .line 90
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/BaseActivity;->setRequestedOrientation(I)V

    .line 93
    :cond_3
    sget-boolean p1, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    if-eqz p1, :cond_4

    .line 94
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 95
    :cond_4
    sget-boolean p1, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    invoke-static {p0, p1}, Lcom/ypx/imagepicker/utils/CommonUtil;->setNoLimitScreen(Landroid/app/Activity;Z)V

    .line 96
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/BaseActivity;->getLayoutId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/BaseActivity;->setContentView(I)V

    .line 98
    instance-of p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity;

    if-nez p1, :cond_5

    instance-of p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    if-nez p1, :cond_5

    const-string p1, "tgs_aics_default_bg_color"

    .line 99
    invoke-static {p0, p1}, Lcom/tgs/aics/utils/ResourceUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/BaseActivity;->getColor(I)I

    move-result p1

    sget-boolean v0, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    invoke-static {p0, p1, v0, v1}, Lcom/ypx/imagepicker/utils/PStatusBarUtil;->setStatusBar(Landroid/app/Activity;IZZ)V

    .line 102
    :cond_5
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/BaseActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x23

    if-lt p1, v0, :cond_7

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v0, :cond_7

    sget-boolean p1, Lcom/tgs/aics/ui/activity/BaseActivity;->isGetNavigationBarHeight:Z

    if-nez p1, :cond_7

    .line 103
    sget-boolean p1, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    if-nez p1, :cond_7

    sget-boolean p1, Lcom/tgs/aics/utils/ConstantUtil;->isReverseLandscape:Z

    if-eqz p1, :cond_6

    goto :goto_1

    .line 106
    :cond_6
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/tgs/aics/ui/activity/BaseActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/tgs/aics/ui/activity/BaseActivity$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_7
    :goto_1
    const-string p1, "tgs_aics_title"

    .line 115
    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/BaseActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/BaseActivity;->txtTitle:Landroid/widget/TextView;

    const-string p1, "tgs_aics_right_icon"

    .line 116
    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/BaseActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/BaseActivity;->imgTips:Landroid/widget/ImageView;

    const-string p1, "tgs_aics_loading_layout"

    .line 118
    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/BaseActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/BaseActivity;->loadingLayout:Landroid/widget/LinearLayout;

    const-string p1, "tgs_aics_load_error_layout"

    .line 119
    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/BaseActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/BaseActivity;->loadErrorLayout:Landroid/widget/FrameLayout;

    const-string p1, "tgs_aics_load_error_retry_btn"

    .line 120
    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/BaseActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/BaseActivity;->retryView:Landroid/widget/TextView;

    .line 122
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/BaseActivity;->showLoading()V

    .line 124
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/BaseActivity;->initView()V

    .line 126
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "LaunchDiagnose"

    if-eqz p1, :cond_8

    .line 127
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_8
    move-object v2, v0

    :goto_2
    if-eqz v2, :cond_9

    .line 128
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_9
    if-eqz v0, :cond_a

    .line 129
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    .line 130
    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string p1, "true"

    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/tgs/aics/diagnose/AICSDiagnoseManager;->startDiagnose(Landroid/app/Activity;Z)Z

    :cond_a
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 427
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 428
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil;->webSocketService:Lcom/tgs/aics/websocket/WebSocketService;

    if-eqz v0, :cond_0

    .line 429
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil;->webSocketService:Lcom/tgs/aics/websocket/WebSocketService;

    invoke-virtual {v0}, Lcom/tgs/aics/websocket/WebSocketService;->onResumeReconnect()V

    :cond_0
    return-void
.end method

.method public reloadData(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setAppNameTitle()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/BaseActivity;->txtTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 169
    sget-object v1, Lcom/tgs/aics/utils/ConstantUtil;->gameNameFromServer:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/tgs/aics/utils/ConstantUtil;->gameNameFromServer:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/tgs/aics/utils/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected setDarkStatusIcon(Z)V
    .locals 2

    .line 314
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 316
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    if-eqz p1, :cond_0

    or-int/lit16 p1, v1, 0x2000

    goto :goto_0

    :cond_0
    and-int/lit16 p1, v1, -0x2001

    .line 322
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/BaseActivity;->txtTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public showLoadErrorLayout(Z)V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/BaseActivity;->loadErrorLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/BaseActivity;->hideLoading()V

    .line 210
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/BaseActivity;->loadErrorLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 212
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/BaseActivity;->retryView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/BaseActivity;->loadingLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 197
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 198
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/BaseActivity;->hideLoadErrorLayout()V

    :cond_0
    return-void
.end method

.method public showTipsIcon(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/BaseActivity;->imgTips:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 174
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/BaseActivity;->imgTips:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
