.class Lcom/applovin/impl/adview/activity/b/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/activity/b/b;->a(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/activity/b/b;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/activity/b/b;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/b$3;->a:Lcom/applovin/impl/adview/activity/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/b$3;->a:Lcom/applovin/impl/adview/activity/b/b;

    iget-object v1, v1, Lcom/applovin/impl/adview/activity/b/b;->h:Lcom/applovin/impl/adview/m;

    if-eqz v1, :cond_0

    .line 138
    new-instance v1, Lcom/applovin/impl/sdk/a/d;

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/b$3;->a:Lcom/applovin/impl/adview/activity/b/b;

    iget-object v2, v2, Lcom/applovin/impl/adview/activity/b/b;->h:Lcom/applovin/impl/adview/m;

    sget-object v3, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->CLOSE_AD:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    const-string v4, "close button"

    invoke-direct {v1, v2, v3, v4}, Lcom/applovin/impl/sdk/a/d;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/b$3;->a:Lcom/applovin/impl/adview/activity/b/b;

    iget-object v1, v1, Lcom/applovin/impl/adview/activity/b/b;->g:Lcom/applovin/impl/adview/u;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/b$3;->a:Lcom/applovin/impl/adview/activity/b/b;

    iget-object v1, v1, Lcom/applovin/impl/adview/activity/b/b;->g:Lcom/applovin/impl/adview/u;

    invoke-virtual {v1}, Lcom/applovin/impl/adview/u;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    new-instance v1, Lcom/applovin/impl/sdk/a/d;

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/b$3;->a:Lcom/applovin/impl/adview/activity/b/b;

    iget-object v2, v2, Lcom/applovin/impl/adview/activity/b/b;->g:Lcom/applovin/impl/adview/u;

    sget-object v3, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->NOT_VISIBLE:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    iget-object v4, p0, Lcom/applovin/impl/adview/activity/b/b$3;->a:Lcom/applovin/impl/adview/activity/b/b;

    iget-object v4, v4, Lcom/applovin/impl/adview/activity/b/b;->g:Lcom/applovin/impl/adview/u;

    .line 146
    invoke-virtual {v4}, Lcom/applovin/impl/adview/u;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/applovin/impl/sdk/a/d;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/b$3;->a:Lcom/applovin/impl/adview/activity/b/b;

    iget-object v1, v1, Lcom/applovin/impl/adview/activity/b/b;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/e;->o()Lcom/applovin/impl/sdk/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/b$3;->a:Lcom/applovin/impl/adview/activity/b/b;

    iget-object v2, v2, Lcom/applovin/impl/adview/activity/b/b;->f:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v1, v2, v0}, Lcom/applovin/impl/sdk/a/b;->a(Landroid/view/View;Ljava/util/List;)V

    return-void
.end method
