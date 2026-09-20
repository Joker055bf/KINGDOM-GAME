.class public final enum Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/internal/Model/CBError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CBClickError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AGE_GATE_FAILURE:Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;

.field public static final enum INTERNAL:Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;

.field public static final enum NO_HOST_ACTIVITY:Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;

.field public static final enum URI_INVALID:Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;

.field public static final enum URI_UNRECOGNIZED:Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;

.field public static final synthetic a:[Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;

    const-string v1, "URI_INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;->URI_INVALID:Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;

    .line 5
    new-instance v1, Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;

    const-string v3, "URI_UNRECOGNIZED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;->URI_UNRECOGNIZED:Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;

    .line 9
    new-instance v3, Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;

    const-string v5, "AGE_GATE_FAILURE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;->AGE_GATE_FAILURE:Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;

    .line 13
    new-instance v5, Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;

    const-string v7, "NO_HOST_ACTIVITY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;

    .line 17
    new-instance v7, Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;

    const-string v9, "INTERNAL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;->INTERNAL:Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 18
    sput-object v9, Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;->a:[Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;
    .locals 1

    .line 1
    const-class v0, Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;

    return-object p0
.end method

.method public static values()[Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;
    .locals 1

    .line 1
    sget-object v0, Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;->a:[Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;

    return-object v0
.end method
