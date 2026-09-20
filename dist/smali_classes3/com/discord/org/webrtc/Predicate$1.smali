.class Lcom/discord/org/webrtc/Predicate$1;
.super Ljava/lang/Object;
.source "Predicate.java"

# interfaces
.implements Lcom/discord/org/webrtc/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/discord/org/webrtc/Predicate;->or(Lcom/discord/org/webrtc/Predicate;)Lcom/discord/org/webrtc/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/discord/org/webrtc/Predicate<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/discord/org/webrtc/Predicate;

.field final synthetic val$other:Lcom/discord/org/webrtc/Predicate;


# direct methods
.method constructor <init>(Lcom/discord/org/webrtc/Predicate;Lcom/discord/org/webrtc/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/discord/org/webrtc/Predicate$1;->this$0:Lcom/discord/org/webrtc/Predicate;

    iput-object p2, p0, Lcom/discord/org/webrtc/Predicate$1;->val$other:Lcom/discord/org/webrtc/Predicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/discord/org/webrtc/Predicate$1;->this$0:Lcom/discord/org/webrtc/Predicate;

    invoke-interface {v0, p1}, Lcom/discord/org/webrtc/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/discord/org/webrtc/Predicate$1;->val$other:Lcom/discord/org/webrtc/Predicate;

    invoke-interface {v0, p1}, Lcom/discord/org/webrtc/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
