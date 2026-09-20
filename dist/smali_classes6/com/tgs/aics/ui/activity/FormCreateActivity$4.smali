.class synthetic Lcom/tgs/aics/ui/activity/FormCreateActivity$4;
.super Ljava/lang/Object;
.source "FormCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/ui/activity/FormCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$tgs$aics$bean$FieldType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 602
    invoke-static {}, Lcom/tgs/aics/bean/FieldType;->values()[Lcom/tgs/aics/bean/FieldType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/tgs/aics/ui/activity/FormCreateActivity$4;->$SwitchMap$com$tgs$aics$bean$FieldType:[I

    :try_start_0
    sget-object v1, Lcom/tgs/aics/bean/FieldType;->FieldTypeSelect:Lcom/tgs/aics/bean/FieldType;

    invoke-virtual {v1}, Lcom/tgs/aics/bean/FieldType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/tgs/aics/ui/activity/FormCreateActivity$4;->$SwitchMap$com$tgs$aics$bean$FieldType:[I

    sget-object v1, Lcom/tgs/aics/bean/FieldType;->FieldTypeMultipleSelect:Lcom/tgs/aics/bean/FieldType;

    invoke-virtual {v1}, Lcom/tgs/aics/bean/FieldType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/tgs/aics/ui/activity/FormCreateActivity$4;->$SwitchMap$com$tgs$aics$bean$FieldType:[I

    sget-object v1, Lcom/tgs/aics/bean/FieldType;->FieldTypeDateRange:Lcom/tgs/aics/bean/FieldType;

    invoke-virtual {v1}, Lcom/tgs/aics/bean/FieldType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/tgs/aics/ui/activity/FormCreateActivity$4;->$SwitchMap$com$tgs$aics$bean$FieldType:[I

    sget-object v1, Lcom/tgs/aics/bean/FieldType;->FieldTypeDate:Lcom/tgs/aics/bean/FieldType;

    invoke-virtual {v1}, Lcom/tgs/aics/bean/FieldType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
