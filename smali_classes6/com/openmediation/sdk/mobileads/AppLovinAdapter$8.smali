.class Lcom/openmediation/sdk/mobileads/AppLovinAdapter$8;
.super Ljava/lang/Object;
.source "AppLovinAdapter.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->loadBannerAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/AppLovinAdapter;

.field final synthetic val$callback:Lcom/openmediation/sdk/mediation/BannerAdCallback;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/mobileads/AppLovinAdapter;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$8;->this$0:Lcom/openmediation/sdk/mobileads/AppLovinAdapter;

    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$8;->val$callback:Lcom/openmediation/sdk/mediation/BannerAdCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    .line 444
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$8;->val$callback:Lcom/openmediation/sdk/mediation/BannerAdCallback;

    if-eqz p1, :cond_0

    .line 445
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdImpression()V

    :cond_0
    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    return-void
.end method
