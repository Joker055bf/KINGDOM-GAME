.class public interface abstract Lcom/flexionmobile/fdk/eventbus/EventListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getTypes()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/flexionmobile/fdk/eventbus/EventType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onReceive(Lcom/flexionmobile/fdk/eventbus/Event;)V
.end method
