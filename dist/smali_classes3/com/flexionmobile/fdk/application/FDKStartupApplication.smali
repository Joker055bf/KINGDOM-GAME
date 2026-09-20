.class public Lcom/flexionmobile/fdk/application/FDKStartupApplication;
.super Landroid/app/Application;


# static fields
.field private static final LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

.field private static final TAG:Ljava/lang/String; = "FDKStartupApplication"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/flexionmobile/fdk/FdkAndroidLogger;

    const-string v1, "FDKStartupApplication"

    invoke-direct {v0, v1}, Lcom/flexionmobile/fdk/FdkAndroidLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flexionmobile/fdk/application/FDKStartupApplication;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCreate$0(Lcom/flexionmobile/fdk/InitSuccessResult;)V
    .locals 1

    sget-object p0, Lcom/flexionmobile/fdk/application/FDKStartupApplication;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    const-string v0, "FDKStartupApplication success"

    invoke-virtual {p0, v0}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->i(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onCreate$1(Lcom/flexionmobile/fdk/InitErrorResult;)V
    .locals 3

    sget-object v0, Lcom/flexionmobile/fdk/application/FDKStartupApplication;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FDKStartupApplication error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flexionmobile/fdk/InitErrorResult;->message()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {}, Lcom/flexionmobile/fdk/FLX;->initApplication()Lcom/flexionmobile/fdk/step/InitContextStep;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/flexionmobile/fdk/step/InitContextStep;->context(Landroid/content/Context;)Lcom/flexionmobile/fdk/step/InitSuccessStep;

    move-result-object v0

    new-instance v1, Lcom/flexionmobile/fdk/application/FDKStartupApplication$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/flexionmobile/fdk/application/FDKStartupApplication$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Lcom/flexionmobile/fdk/step/InitSuccessStep;->onSuccess(Lcom/flexionmobile/fdk/ResultHandler;)Lcom/flexionmobile/fdk/step/InitErrorStep;

    move-result-object v0

    new-instance v1, Lcom/flexionmobile/fdk/application/FDKStartupApplication$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/flexionmobile/fdk/application/FDKStartupApplication$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Lcom/flexionmobile/fdk/step/InitErrorStep;->onError(Lcom/flexionmobile/fdk/ResultHandler;)Lcom/flexionmobile/fdk/step/StartStep;

    move-result-object v0

    invoke-interface {v0}, Lcom/flexionmobile/fdk/step/StartStep;->start()V

    return-void
.end method
