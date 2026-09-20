.class Lcom/openmediation/sdk/mobileads/AppLovinAdapter$7;
.super Ljava/lang/Object;
.source "AppLovinAdapter.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdClickListener;


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

    .line 433
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$7;->this$0:Lcom/openmediation/sdk/mobileads/AppLovinAdapter;

    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$7;->val$callback:Lcom/openmediation/sdk/mediation/BannerAdCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    .line 436
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$7;->val$callback:Lcom/openmediation/sdk/mediation/BannerAdCallback;

    if-eqz p1, :cond_0

    .line 437
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdAdClicked()V

    :cond_0
    return-void
.end method
