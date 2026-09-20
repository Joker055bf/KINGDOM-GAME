.class public Lcom/openmediation/sdk/inspector/logs/InventoryLog;
.super Lcom/openmediation/sdk/inspector/logs/BaseLog;


# instance fields
.field private availableSize:I

.field private instance:Lcom/openmediation/sdk/utils/model/BaseInstance;

.field private inventorySize:I

.field private revenue:D


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/inspector/logs/BaseLog;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getAvailableSize()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/inspector/logs/InventoryLog;->availableSize:I

    return v0
.end method

.method public getInstance()Lcom/openmediation/sdk/utils/model/BaseInstance;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/inspector/logs/InventoryLog;->instance:Lcom/openmediation/sdk/utils/model/BaseInstance;

    return-object v0
.end method

.method public getInventorySize()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/inspector/logs/InventoryLog;->inventorySize:I

    return v0
.end method

.method public getRevenue()D
    .locals 2

    iget-wide v0, p0, Lcom/openmediation/sdk/inspector/logs/InventoryLog;->revenue:D

    return-wide v0
.end method

.method public setAvailableSize(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/inspector/logs/InventoryLog;->availableSize:I

    return-void
.end method

.method public setInstance(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 2

    iput-object p1, p0, Lcom/openmediation/sdk/inspector/logs/InventoryLog;->instance:Lcom/openmediation/sdk/utils/model/BaseInstance;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/openmediation/sdk/inspector/logs/BaseLog;->recordTime:J

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getRevenue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/openmediation/sdk/inspector/logs/InventoryLog;->revenue:D

    return-void
.end method

.method public setInventorySize(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/inspector/logs/InventoryLog;->inventorySize:I

    return-void
.end method
