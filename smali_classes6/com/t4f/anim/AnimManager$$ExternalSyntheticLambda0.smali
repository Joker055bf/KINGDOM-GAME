.class public final synthetic Lcom/t4f/anim/AnimManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/t4f/anim/view/IAnimView$StatusListener;


# instance fields
.field public final synthetic f$0:Lcom/t4f/anim/AnimManager;


# direct methods
.method public synthetic constructor <init>(Lcom/t4f/anim/AnimManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4f/anim/AnimManager$$ExternalSyntheticLambda0;->f$0:Lcom/t4f/anim/AnimManager;

    return-void
.end method


# virtual methods
.method public final onStatusChanged(Lcom/t4f/anim/model/AnimStatus;)V
    .locals 1

    iget-object v0, p0, Lcom/t4f/anim/AnimManager$$ExternalSyntheticLambda0;->f$0:Lcom/t4f/anim/AnimManager;

    invoke-virtual {v0, p1}, Lcom/t4f/anim/AnimManager;->lambda$createAnimView$0$com-t4f-anim-AnimManager(Lcom/t4f/anim/model/AnimStatus;)V

    return-void
.end method
