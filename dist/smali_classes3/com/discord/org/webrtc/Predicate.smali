.class public interface abstract Lcom/discord/org/webrtc/Predicate;
.super Ljava/lang/Object;
.source "Predicate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public and(Lcom/discord/org/webrtc/Predicate;)Lcom/discord/org/webrtc/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/discord/org/webrtc/Predicate<",
            "-TT;>;)",
            "Lcom/discord/org/webrtc/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/discord/org/webrtc/Predicate$2;

    invoke-direct {v0, p0, p1}, Lcom/discord/org/webrtc/Predicate$2;-><init>(Lcom/discord/org/webrtc/Predicate;Lcom/discord/org/webrtc/Predicate;)V

    return-object v0
.end method

.method public negate()Lcom/discord/org/webrtc/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/discord/org/webrtc/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/discord/org/webrtc/Predicate$3;

    invoke-direct {v0, p0}, Lcom/discord/org/webrtc/Predicate$3;-><init>(Lcom/discord/org/webrtc/Predicate;)V

    return-object v0
.end method

.method public or(Lcom/discord/org/webrtc/Predicate;)Lcom/discord/org/webrtc/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/discord/org/webrtc/Predicate<",
            "-TT;>;)",
            "Lcom/discord/org/webrtc/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/discord/org/webrtc/Predicate$1;

    invoke-direct {v0, p0, p1}, Lcom/discord/org/webrtc/Predicate$1;-><init>(Lcom/discord/org/webrtc/Predicate;Lcom/discord/org/webrtc/Predicate;)V

    return-object v0
.end method

.method public abstract test(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
