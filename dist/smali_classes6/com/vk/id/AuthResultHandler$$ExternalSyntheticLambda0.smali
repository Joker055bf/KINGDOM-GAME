.class public final synthetic Lcom/vk/id/AuthResultHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/vk/id/AuthResultHandler;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vk/id/AuthResultHandler;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/id/AuthResultHandler$$ExternalSyntheticLambda0;->f$0:Lcom/vk/id/AuthResultHandler;

    iput-object p2, p0, Lcom/vk/id/AuthResultHandler$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/vk/id/AuthResultHandler$$ExternalSyntheticLambda0;->f$0:Lcom/vk/id/AuthResultHandler;

    iget-object v1, p0, Lcom/vk/id/AuthResultHandler$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function0;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Lcom/vk/id/AuthResultHandler;->$r8$lambda$8LX2qnYBXfh9D-Z3vaPmptn5GLM(Lcom/vk/id/AuthResultHandler;Lkotlin/jvm/functions/Function0;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
