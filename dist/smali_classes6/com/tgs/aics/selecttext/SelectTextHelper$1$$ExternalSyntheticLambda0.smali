.class public final synthetic Lcom/tgs/aics/selecttext/SelectTextHelper$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/selecttext/SelectTextHelper$1;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/selecttext/SelectTextHelper$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1$$ExternalSyntheticLambda0;->f$0:Lcom/tgs/aics/selecttext/SelectTextHelper$1;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1$$ExternalSyntheticLambda0;->f$0:Lcom/tgs/aics/selecttext/SelectTextHelper$1;

    invoke-virtual {v0, p1, p2}, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->lambda$onLongClick$0$com-tgs-aics-selecttext-SelectTextHelper$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
