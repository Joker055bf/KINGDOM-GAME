.class Lcom/applovin/impl/adview/activity/b/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/adview/activity/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/activity/b/e;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/adview/activity/b/e;)V
    .locals 0

    .line 1017
    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/e$c;->a:Lcom/applovin/impl/adview/activity/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/adview/activity/b/e;Lcom/applovin/impl/adview/activity/b/e$1;)V
    .locals 0

    .line 1017
    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/activity/b/e$c;-><init>(Lcom/applovin/impl/adview/activity/b/e;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1023
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e$c;->a:Lcom/applovin/impl/adview/activity/b/e;

    iget-object v0, v0, Lcom/applovin/impl/adview/activity/b/e;->y:Lcom/applovin/impl/adview/m;

    if-ne p1, v0, :cond_1

    .line 1025
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/e$c;->a:Lcom/applovin/impl/adview/activity/b/e;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/activity/b/e;->s()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1027
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/e$c;->a:Lcom/applovin/impl/adview/activity/b/e;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/activity/b/e;->e()V

    .line 1028
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/e$c;->a:Lcom/applovin/impl/adview/activity/b/e;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/activity/b/e;->p()V

    .line 1029
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/e$c;->a:Lcom/applovin/impl/adview/activity/b/e;

    iget-object p1, p1, Lcom/applovin/impl/adview/activity/b/e;->t:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/b/b;->b()V

    goto :goto_0

    .line 1033
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/e$c;->a:Lcom/applovin/impl/adview/activity/b/e;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/activity/b/e;->c()V

    goto :goto_0

    .line 1036
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e$c;->a:Lcom/applovin/impl/adview/activity/b/e;

    iget-object v0, v0, Lcom/applovin/impl/adview/activity/b/e;->z:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 1038
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/e$c;->a:Lcom/applovin/impl/adview/activity/b/e;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/activity/b/e;->z()V

    goto :goto_0

    .line 1042
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e$c;->a:Lcom/applovin/impl/adview/activity/b/e;

    iget-object v0, v0, Lcom/applovin/impl/adview/activity/b/e;->c:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e$c;->a:Lcom/applovin/impl/adview/activity/b/e;

    iget-object v0, v0, Lcom/applovin/impl/adview/activity/b/e;->c:Lcom/applovin/impl/sdk/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled click on widget: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AppLovinFullscreenActivity"

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
