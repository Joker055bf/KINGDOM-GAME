.class public Lcom/openmediation/sdk/utils/SdkUtil;
.super Ljava/lang/Object;


# static fields
.field private static final ACCEPTED_URI_SCHEME:Ljava/util/regex/Pattern;

.field private static OM_PERMISSIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.permission.INTERNET"

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/openmediation/sdk/utils/SdkUtil;->OM_PERMISSIONS:[Ljava/lang/String;

    const-string v0, "(?i)((?:http|https|ftp|file)://|(?:inline|data|about|javascript):|(?:.*:.*@))(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/openmediation/sdk/utils/SdkUtil;->ACCEPTED_URI_SCHEME:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static banRun(Landroid/content/Context;Ljava/lang/String;)Lcom/openmediation/sdk/utils/error/Error;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 v0, 0x6f

    if-eqz p1, :cond_0

    new-instance p0, Lcom/openmediation/sdk/utils/error/Error;

    const-string p1, "Init Invalid Request, AppKey is empty"

    const/4 v1, 0x3

    invoke-direct {p0, v0, p1, v1}, Lcom/openmediation/sdk/utils/error/Error;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/error/Error;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    return-object p0

    :cond_0
    sget-object p1, Lcom/openmediation/sdk/utils/SdkUtil;->OM_PERMISSIONS:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/openmediation/sdk/utils/PermissionUtil;->isGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Lcom/openmediation/sdk/utils/error/Error;

    const-string p1, "Init Invalid Request, Internet permission has not granted"

    const/16 v1, 0x8

    invoke-direct {p0, v0, p1, v1}, Lcom/openmediation/sdk/utils/error/Error;-><init>(ILjava/lang/String;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Permission Error: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/error/Error;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static copy(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "Label"

    invoke-static {v1, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isAcceptedScheme(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/openmediation/sdk/utils/SdkUtil;->ACCEPTED_URI_SCHEME:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method
