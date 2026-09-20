.class Lcom/tgs/aics/selecttext/SelectTextHelper$1$1;
.super Ljava/lang/Object;
.source "SelectTextHelper.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/selecttext/SelectTextHelper$1;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tgs/aics/selecttext/SelectTextHelper$1;


# direct methods
.method constructor <init>(Lcom/tgs/aics/selecttext/SelectTextHelper$1;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1$1;->this$1:Lcom/tgs/aics/selecttext/SelectTextHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 424
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1$1;->this$1:Lcom/tgs/aics/selecttext/SelectTextHelper$1;

    iget-object p1, p1, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-virtual {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->destroy()V

    return-void
.end method
