.class public Lcom/t4f/sdk/device/ShellAdbUtils$CommandResult;
.super Ljava/lang/Object;
.source "ShellAdbUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/t4f/sdk/device/ShellAdbUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommandResult"
.end annotation


# instance fields
.field public errorMsg:Ljava/lang/String;

.field public result:I

.field public successMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput p1, p0, Lcom/t4f/sdk/device/ShellAdbUtils$CommandResult;->result:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput p1, p0, Lcom/t4f/sdk/device/ShellAdbUtils$CommandResult;->result:I

    .line 224
    iput-object p2, p0, Lcom/t4f/sdk/device/ShellAdbUtils$CommandResult;->successMsg:Ljava/lang/String;

    .line 225
    iput-object p3, p0, Lcom/t4f/sdk/device/ShellAdbUtils$CommandResult;->errorMsg:Ljava/lang/String;

    return-void
.end method
