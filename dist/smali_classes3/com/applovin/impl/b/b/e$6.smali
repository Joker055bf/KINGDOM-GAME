.class Lcom/applovin/impl/b/b/e$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/b/b/e;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/applovin/impl/b/a/h;Lcom/applovin/impl/sdk/p;Lcom/applovin/impl/b/b/e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/b/b/e;


# direct methods
.method constructor <init>(Lcom/applovin/impl/b/b/e;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/applovin/impl/b/b/e$6;->a:Lcom/applovin/impl/b/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 124
    iget-object p1, p0, Lcom/applovin/impl/b/b/e$6;->a:Lcom/applovin/impl/b/b/e;

    invoke-static {p1}, Lcom/applovin/impl/b/b/e;->c(Lcom/applovin/impl/b/b/e;)Lcom/applovin/impl/b/b/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/b/b/e;->a(Lcom/applovin/impl/b/b/e;Landroid/view/View;I)V

    return-void
.end method
