.class public Lcom/applovin/impl/sdk/UserServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/sdk/AppLovinUserService;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/p;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/p;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/applovin/impl/sdk/UserServiceImpl;->a:Lcom/applovin/impl/sdk/p;

    return-void
.end method


# virtual methods
.method public preloadConsentDialog()V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/applovin/impl/sdk/UserServiceImpl;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->T()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/o;->c()V

    return-void
.end method

.method public showConsentDialog(Landroid/app/Activity;Lcom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/applovin/impl/sdk/UserServiceImpl;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->T()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/sdk/o;->a(Landroid/app/Activity;Lcom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "UserService{}"

    return-object v0
.end method
