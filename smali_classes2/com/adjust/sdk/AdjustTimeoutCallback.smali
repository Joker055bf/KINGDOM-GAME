.class public Lcom/adjust/sdk/AdjustTimeoutCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private onAdidReadListener:Lcom/adjust/sdk/OnAdidReadListener;

.field private onAttributionReadListener:Lcom/adjust/sdk/OnAttributionReadListener;

.field private timeoutTimer:Lcom/adjust/sdk/scheduler/TimerOnce;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/OnAdidReadListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/adjust/sdk/AdjustTimeoutCallback;->onAdidReadListener:Lcom/adjust/sdk/OnAdidReadListener;

    return-void
.end method

.method public constructor <init>(Lcom/adjust/sdk/OnAttributionReadListener;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/adjust/sdk/AdjustTimeoutCallback;->onAttributionReadListener:Lcom/adjust/sdk/OnAttributionReadListener;

    return-void
.end method


# virtual methods
.method public getOnAdidReadListener()Lcom/adjust/sdk/OnAdidReadListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustTimeoutCallback;->onAdidReadListener:Lcom/adjust/sdk/OnAdidReadListener;

    return-object v0
.end method

.method public getOnAttributionReadListener()Lcom/adjust/sdk/OnAttributionReadListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustTimeoutCallback;->onAttributionReadListener:Lcom/adjust/sdk/OnAttributionReadListener;

    return-object v0
.end method

.method public getTimeoutTimer()Lcom/adjust/sdk/scheduler/TimerOnce;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustTimeoutCallback;->timeoutTimer:Lcom/adjust/sdk/scheduler/TimerOnce;

    return-object v0
.end method

.method public setOnAdidReadListener(Lcom/adjust/sdk/OnAdidReadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/adjust/sdk/AdjustTimeoutCallback;->onAdidReadListener:Lcom/adjust/sdk/OnAdidReadListener;

    return-void
.end method

.method public setOnAttributionReadListener(Lcom/adjust/sdk/OnAttributionReadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/adjust/sdk/AdjustTimeoutCallback;->onAttributionReadListener:Lcom/adjust/sdk/OnAttributionReadListener;

    return-void
.end method

.method public setTimer(Lcom/adjust/sdk/scheduler/TimerOnce;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/adjust/sdk/AdjustTimeoutCallback;->timeoutTimer:Lcom/adjust/sdk/scheduler/TimerOnce;

    return-void
.end method
