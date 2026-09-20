.class final Lcom/openmediation/sdk/inspector/InspectorManager$ImHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/inspector/InspectorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/openmediation/sdk/inspector/InspectorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/openmediation/sdk/inspector/InspectorManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/openmediation/sdk/inspector/InspectorManager;-><init>(Lcom/openmediation/sdk/inspector/InspectorManager$1;)V

    sput-object v0, Lcom/openmediation/sdk/inspector/InspectorManager$ImHolder;->INSTANCE:Lcom/openmediation/sdk/inspector/InspectorManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/openmediation/sdk/inspector/InspectorManager;
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/inspector/InspectorManager$ImHolder;->INSTANCE:Lcom/openmediation/sdk/inspector/InspectorManager;

    return-object v0
.end method
