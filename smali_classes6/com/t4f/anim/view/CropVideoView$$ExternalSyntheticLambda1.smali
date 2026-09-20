.class public final synthetic Lcom/t4f/anim/view/CropVideoView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic f$0:Lcom/t4f/anim/view/CropVideoView;


# direct methods
.method public synthetic constructor <init>(Lcom/t4f/anim/view/CropVideoView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4f/anim/view/CropVideoView$$ExternalSyntheticLambda1;->f$0:Lcom/t4f/anim/view/CropVideoView;

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    iget-object v0, p0, Lcom/t4f/anim/view/CropVideoView$$ExternalSyntheticLambda1;->f$0:Lcom/t4f/anim/view/CropVideoView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/t4f/anim/view/CropVideoView;->lambda$initVideoView$0$com-t4f-anim-view-CropVideoView(Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1
.end method
