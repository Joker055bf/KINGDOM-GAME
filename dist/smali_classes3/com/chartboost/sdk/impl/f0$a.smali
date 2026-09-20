.class public Lcom/chartboost/sdk/impl/f0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/f0;->a(Lcom/chartboost/sdk/impl/g0;Lcom/chartboost/sdk/internal/Model/a;Ljava/lang/Runnable;ZLcom/chartboost/sdk/impl/o1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/chartboost/sdk/impl/g0;

.field public final synthetic c:Lcom/chartboost/sdk/internal/Model/a;

.field public final synthetic d:Ljava/lang/Runnable;

.field public final synthetic e:Z

.field public final synthetic f:Lcom/chartboost/sdk/impl/f0;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/f0;Landroid/view/View;Lcom/chartboost/sdk/impl/g0;Lcom/chartboost/sdk/internal/Model/a;Ljava/lang/Runnable;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/f0$a;->f:Lcom/chartboost/sdk/impl/f0;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/f0$a;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/chartboost/sdk/impl/f0$a;->b:Lcom/chartboost/sdk/impl/g0;

    iput-object p4, p0, Lcom/chartboost/sdk/impl/f0$a;->c:Lcom/chartboost/sdk/internal/Model/a;

    iput-object p5, p0, Lcom/chartboost/sdk/impl/f0$a;->d:Ljava/lang/Runnable;

    iput-boolean p6, p0, Lcom/chartboost/sdk/impl/f0$a;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f0$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f0$a;->f:Lcom/chartboost/sdk/impl/f0;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/f0$a;->b:Lcom/chartboost/sdk/impl/g0;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/f0$a;->c:Lcom/chartboost/sdk/internal/Model/a;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/f0$a;->d:Ljava/lang/Runnable;

    iget-boolean v4, p0, Lcom/chartboost/sdk/impl/f0$a;->e:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/chartboost/sdk/impl/f0;->a(Lcom/chartboost/sdk/impl/g0;Lcom/chartboost/sdk/internal/Model/a;Ljava/lang/Runnable;Z)V

    return-void
.end method
