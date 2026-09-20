.class public Lcom/t4f/tgs/sdkfileserver/profile/utils/SPUtil;
.super Ljava/lang/Object;
.source "SPUtil.java"


# static fields
.field private static sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    .line 39
    invoke-static {p0}, Lcom/t4f/tgs/sdkfileserver/profile/utils/SPUtil;->getSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-static {p0}, Lcom/t4f/tgs/sdkfileserver/profile/utils/SPUtil;->getSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 0

    .line 31
    invoke-static {p0}, Lcom/t4f/tgs/sdkfileserver/profile/utils/SPUtil;->getSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static getSP(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 11
    sget-object v0, Lcom/t4f/tgs/sdkfileserver/profile/utils/SPUtil;->sp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "t4f_tgs_sp"

    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/SPUtil;->sp:Landroid/content/SharedPreferences;

    .line 15
    :cond_0
    sget-object p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/SPUtil;->sp:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public static put(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/t4f/tgs/sdkfileserver/profile/utils/SPUtil;->getSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-static {p0}, Lcom/t4f/tgs/sdkfileserver/profile/utils/SPUtil;->getSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static put(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 19
    invoke-static {p0}, Lcom/t4f/tgs/sdkfileserver/profile/utils/SPUtil;->getSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
