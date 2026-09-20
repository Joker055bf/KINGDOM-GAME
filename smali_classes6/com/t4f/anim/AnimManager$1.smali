.class Lcom/t4f/anim/AnimManager$1;
.super Ljava/lang/Object;
.source "AnimManager.java"

# interfaces
.implements Lcom/t4f/anim/model/AnimStatus$AnimStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/t4f/anim/AnimManager;->getAnimStatusAsync(Landroid/app/Activity;Lcom/t4f/anim/AnimManager$AnimStatusCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/t4f/anim/AnimManager;

.field final synthetic val$callback:Lcom/t4f/anim/AnimManager$AnimStatusCallback;


# direct methods
.method constructor <init>(Lcom/t4f/anim/AnimManager;Lcom/t4f/anim/AnimManager$AnimStatusCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 325
    iput-object p1, p0, Lcom/t4f/anim/AnimManager$1;->this$0:Lcom/t4f/anim/AnimManager;

    iput-object p2, p0, Lcom/t4f/anim/AnimManager$1;->val$callback:Lcom/t4f/anim/AnimManager$AnimStatusCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChange()V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/t4f/anim/AnimManager$1;->val$callback:Lcom/t4f/anim/AnimManager$AnimStatusCallback;

    iget-object v1, p0, Lcom/t4f/anim/AnimManager$1;->this$0:Lcom/t4f/anim/AnimManager;

    invoke-static {v1}, Lcom/t4f/anim/AnimManager;->access$000(Lcom/t4f/anim/AnimManager;)Lcom/t4f/anim/model/AnimStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/t4f/anim/model/AnimStatus;->toJsonString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/t4f/anim/AnimManager$AnimStatusCallback;->onStatus(Ljava/lang/String;)V

    return-void
.end method
