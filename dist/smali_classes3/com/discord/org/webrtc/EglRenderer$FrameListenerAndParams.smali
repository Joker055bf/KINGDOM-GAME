.class Lcom/discord/org/webrtc/EglRenderer$FrameListenerAndParams;
.super Ljava/lang/Object;
.source "EglRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/EglRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameListenerAndParams"
.end annotation


# instance fields
.field public final applyFpsReduction:Z

.field public final drawer:Lcom/discord/org/webrtc/RendererCommon$GlDrawer;

.field public final listener:Lcom/discord/org/webrtc/EglRenderer$FrameListener;

.field public final scale:F


# direct methods
.method public constructor <init>(Lcom/discord/org/webrtc/EglRenderer$FrameListener;FLcom/discord/org/webrtc/RendererCommon$GlDrawer;Z)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/discord/org/webrtc/EglRenderer$FrameListenerAndParams;->listener:Lcom/discord/org/webrtc/EglRenderer$FrameListener;

    .line 62
    iput p2, p0, Lcom/discord/org/webrtc/EglRenderer$FrameListenerAndParams;->scale:F

    .line 63
    iput-object p3, p0, Lcom/discord/org/webrtc/EglRenderer$FrameListenerAndParams;->drawer:Lcom/discord/org/webrtc/RendererCommon$GlDrawer;

    .line 64
    iput-boolean p4, p0, Lcom/discord/org/webrtc/EglRenderer$FrameListenerAndParams;->applyFpsReduction:Z

    return-void
.end method
