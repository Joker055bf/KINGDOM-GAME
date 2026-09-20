.class public final synthetic Lcom/t4f/anim/AnimManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/t4f/anim/AnimManager;

.field public final synthetic f$1:Landroid/widget/FrameLayout;

.field public final synthetic f$2:Landroid/view/View;

.field public final synthetic f$3:Landroid/app/Application;


# direct methods
.method public synthetic constructor <init>(Lcom/t4f/anim/AnimManager;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4f/anim/AnimManager$$ExternalSyntheticLambda1;->f$0:Lcom/t4f/anim/AnimManager;

    iput-object p2, p0, Lcom/t4f/anim/AnimManager$$ExternalSyntheticLambda1;->f$1:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/t4f/anim/AnimManager$$ExternalSyntheticLambda1;->f$2:Landroid/view/View;

    iput-object p4, p0, Lcom/t4f/anim/AnimManager$$ExternalSyntheticLambda1;->f$3:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/t4f/anim/AnimManager$$ExternalSyntheticLambda1;->f$0:Lcom/t4f/anim/AnimManager;

    iget-object v1, p0, Lcom/t4f/anim/AnimManager$$ExternalSyntheticLambda1;->f$1:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/t4f/anim/AnimManager$$ExternalSyntheticLambda1;->f$2:Landroid/view/View;

    iget-object v3, p0, Lcom/t4f/anim/AnimManager$$ExternalSyntheticLambda1;->f$3:Landroid/app/Application;

    invoke-virtual {v0, v1, v2, v3}, Lcom/t4f/anim/AnimManager;->lambda$removeAnimView$1$com-t4f-anim-AnimManager(Landroid/widget/FrameLayout;Landroid/view/View;Landroid/app/Application;)V

    return-void
.end method
