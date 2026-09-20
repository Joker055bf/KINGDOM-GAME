.class public Lcom/applovin/impl/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/b/a$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/applovin/impl/b/a$a;

.field private static final b:Lcom/applovin/impl/b/a$a;

.field private static final c:Lcom/applovin/impl/b/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/applovin/impl/b/a$a;

    const-string v1, "Age Restricted User"

    sget-object v2, Lcom/applovin/impl/sdk/c/d;->o:Lcom/applovin/impl/sdk/c/d;

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/b/a$a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/c/d;)V

    sput-object v0, Lcom/applovin/impl/b/a;->a:Lcom/applovin/impl/b/a$a;

    .line 16
    new-instance v0, Lcom/applovin/impl/b/a$a;

    const-string v1, "Has User Consent"

    sget-object v2, Lcom/applovin/impl/sdk/c/d;->n:Lcom/applovin/impl/sdk/c/d;

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/b/a$a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/c/d;)V

    sput-object v0, Lcom/applovin/impl/b/a;->b:Lcom/applovin/impl/b/a$a;

    .line 17
    new-instance v0, Lcom/applovin/impl/b/a$a;

    const-string v1, "\"Do Not Sell\""

    sget-object v2, Lcom/applovin/impl/sdk/c/d;->p:Lcom/applovin/impl/sdk/c/d;

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/b/a$a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/c/d;)V

    sput-object v0, Lcom/applovin/impl/b/a;->c:Lcom/applovin/impl/b/a$a;

    return-void
.end method

.method public static a()Lcom/applovin/impl/b/a$a;
    .locals 1

    .line 25
    sget-object v0, Lcom/applovin/impl/b/a;->a:Lcom/applovin/impl/b/a$a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    sget-object v1, Lcom/applovin/impl/b/a;->a:Lcom/applovin/impl/b/a$a;

    invoke-static {v1, p0}, Lcom/applovin/impl/b/a;->a(Lcom/applovin/impl/b/a$a;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    sget-object v1, Lcom/applovin/impl/b/a;->b:Lcom/applovin/impl/b/a$a;

    invoke-static {v1, p0}, Lcom/applovin/impl/b/a;->a(Lcom/applovin/impl/b/a$a;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    sget-object v1, Lcom/applovin/impl/b/a;->c:Lcom/applovin/impl/b/a$a;

    invoke-static {v1, p0}, Lcom/applovin/impl/b/a;->a(Lcom/applovin/impl/b/a$a;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/applovin/impl/b/a$a;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/applovin/impl/b/a$a;->a(Lcom/applovin/impl/b/a$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/applovin/impl/b/a$a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Boolean;Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/c/d<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Boolean;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to update compliance value for key: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppLovinSdk"

    invoke-static {p1, p0}, Lcom/applovin/impl/sdk/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 79
    invoke-static {p0, v1, p2}, Lcom/applovin/impl/sdk/c/e;->b(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 81
    invoke-static {p0, p1, p2}, Lcom/applovin/impl/sdk/c/e;->a(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;Landroid/content/Context;)V

    const/4 p0, 0x1

    if-eqz v1, :cond_2

    if-eq v1, p1, :cond_1

    move v0, p0

    :cond_1
    return v0

    :cond_2
    return p0
.end method

.method public static a(ZLandroid/content/Context;)Z
    .locals 1

    .line 44
    sget-object v0, Lcom/applovin/impl/sdk/c/d;->o:Lcom/applovin/impl/sdk/c/d;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/applovin/impl/b/a;->a(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Boolean;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static b()Lcom/applovin/impl/b/a$a;
    .locals 1

    .line 30
    sget-object v0, Lcom/applovin/impl/b/a;->b:Lcom/applovin/impl/b/a$a;

    return-object v0
.end method

.method public static b(ZLandroid/content/Context;)Z
    .locals 1

    .line 49
    sget-object v0, Lcom/applovin/impl/sdk/c/d;->n:Lcom/applovin/impl/sdk/c/d;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/applovin/impl/b/a;->a(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Boolean;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static c()Lcom/applovin/impl/b/a$a;
    .locals 1

    .line 35
    sget-object v0, Lcom/applovin/impl/b/a;->c:Lcom/applovin/impl/b/a$a;

    return-object v0
.end method

.method public static c(ZLandroid/content/Context;)Z
    .locals 1

    .line 54
    sget-object v0, Lcom/applovin/impl/sdk/c/d;->p:Lcom/applovin/impl/sdk/c/d;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/applovin/impl/b/a;->a(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Boolean;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
