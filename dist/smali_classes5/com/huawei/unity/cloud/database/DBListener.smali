.class public Lcom/huawei/unity/cloud/database/DBListener;
.super Ljava/lang/Object;
.source "DBListener.java"

# interfaces
.implements Lcom/huawei/agconnect/cloud/database/OnSnapshotListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/huawei/agconnect/cloud/database/CloudDBZoneObject;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/huawei/agconnect/cloud/database/OnSnapshotListener<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private _mListener:Lcom/huawei/agconnect/cloud/database/OnSnapshotListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/agconnect/cloud/database/OnSnapshotListener<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/huawei/agconnect/cloud/database/OnSnapshotListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/agconnect/cloud/database/OnSnapshotListener<",
            "TE;>;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/huawei/unity/cloud/database/DBListener;->_mListener:Lcom/huawei/agconnect/cloud/database/OnSnapshotListener;

    return-void
.end method


# virtual methods
.method public onSnapshot(Lcom/huawei/agconnect/cloud/database/CloudDBZoneSnapshot;Lcom/huawei/agconnect/cloud/database/exceptions/AGConnectCloudDBException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/agconnect/cloud/database/CloudDBZoneSnapshot<",
            "TE;>;",
            "Lcom/huawei/agconnect/cloud/database/exceptions/AGConnectCloudDBException;",
            ")V"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/huawei/unity/cloud/database/DBListener;->_mListener:Lcom/huawei/agconnect/cloud/database/OnSnapshotListener;

    invoke-interface {v0, p1, p2}, Lcom/huawei/agconnect/cloud/database/OnSnapshotListener;->onSnapshot(Lcom/huawei/agconnect/cloud/database/CloudDBZoneSnapshot;Lcom/huawei/agconnect/cloud/database/exceptions/AGConnectCloudDBException;)V

    return-void
.end method
