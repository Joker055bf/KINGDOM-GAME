.class public final synthetic Lcom/flexionmobile/fdk/InitBuilder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/flexionmobile/fdk/ResultHandler;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/flexionmobile/fdk/InitErrorResult;

    invoke-static {p1}, Lcom/flexionmobile/fdk/InitBuilder;->lambda$onError$1(Lcom/flexionmobile/fdk/InitErrorResult;)V

    return-void
.end method
