.class public final synthetic Lcom/linecorp/linesdk/unitywrapper/activity/LineSdkWrapperActivity$WhenMappings;
.super Ljava/lang/Object;
.source "LineSdkWrapperActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/unitywrapper/activity/LineSdkWrapperActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/linecorp/linesdk/LineApiResponseCode;->values()[Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/linecorp/linesdk/LineApiResponseCode;->SUCCESS:Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineApiResponseCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/linecorp/linesdk/LineApiResponseCode;->CANCEL:Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineApiResponseCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sput-object v0, Lcom/linecorp/linesdk/unitywrapper/activity/LineSdkWrapperActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
