.class public final synthetic Lcom/vk/id/exchangetoken/VKIDTokenExchanger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$$ExternalSyntheticLambda0;->f$0:Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$$ExternalSyntheticLambda0;->f$0:Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;->$r8$lambda$bg6wxI8Gn3LRJMifR_Hxn-YrhFo(Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
