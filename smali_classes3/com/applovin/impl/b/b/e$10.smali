.class Lcom/applovin/impl/b/b/e$10;
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

    .line 179
    iput-object p1, p0, Lcom/applovin/impl/b/b/e$10;->a:Lcom/applovin/impl/b/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 183
    iget-object p1, p0, Lcom/applovin/impl/b/b/e$10;->a:Lcom/applovin/impl/b/b/e;

    invoke-static {p1}, Lcom/applovin/impl/b/b/e;->b(Lcom/applovin/impl/b/b/e;)Lcom/applovin/impl/b/b/c;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applovin/impl/b/b/e;->a(Lcom/applovin/impl/b/b/e;Landroid/view/View;)V

    return-void
.end method
