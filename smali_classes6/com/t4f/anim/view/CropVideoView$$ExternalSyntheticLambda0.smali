.class public final synthetic Lcom/t4f/anim/view/CropVideoView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/t4f/anim/view/CropVideoView;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/t4f/anim/view/CropVideoView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4f/anim/view/CropVideoView$$ExternalSyntheticLambda0;->f$0:Lcom/t4f/anim/view/CropVideoView;

    iput-object p2, p0, Lcom/t4f/anim/view/CropVideoView$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/t4f/anim/view/CropVideoView$$ExternalSyntheticLambda0;->f$0:Lcom/t4f/anim/view/CropVideoView;

    iget-object v1, p0, Lcom/t4f/anim/view/CropVideoView$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/t4f/anim/view/CropVideoView;->lambda$handleDestroyAsync$2$com-t4f-anim-view-CropVideoView(Ljava/lang/Runnable;)V

    return-void
.end method
