.class public final Lcom/openmediation/sdk/a/f;
.super Lcom/crosspromotion/sdk/core/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/crosspromotion/sdk/core/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/crosspromotion/sdk/interstitial/InterstitialAdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->d:Lcom/openmediation/sdk/a/g;

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/a/g;->a(Lcom/crosspromotion/sdk/interstitial/InterstitialAdListener;)V

    return-void
.end method

.method protected g()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public p()V
    .locals 1

    invoke-super {p0}, Lcom/crosspromotion/sdk/core/a;->p()V

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/openmediation/sdk/a/d;->a(Ljava/lang/String;Lcom/crosspromotion/sdk/core/a;)V

    const-class v0, Lcom/crosspromotion/sdk/AdsActivity;

    invoke-virtual {p0, v0}, Lcom/crosspromotion/sdk/core/a;->a(Ljava/lang/Class;)V

    return-void
.end method
