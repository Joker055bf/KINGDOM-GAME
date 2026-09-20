.class public final enum Lcom/tgs/aics/bean/FieldType;
.super Ljava/lang/Enum;
.source "FieldType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tgs/aics/bean/FieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tgs/aics/bean/FieldType;

.field public static final enum FieldTypeDate:Lcom/tgs/aics/bean/FieldType;

.field public static final enum FieldTypeDateRange:Lcom/tgs/aics/bean/FieldType;

.field public static final enum FieldTypeInput:Lcom/tgs/aics/bean/FieldType;

.field public static final enum FieldTypeMultipleSelect:Lcom/tgs/aics/bean/FieldType;

.field public static final enum FieldTypeNumberInput:Lcom/tgs/aics/bean/FieldType;

.field public static final enum FieldTypePicture:Lcom/tgs/aics/bean/FieldType;

.field public static final enum FieldTypeSelect:Lcom/tgs/aics/bean/FieldType;

.field public static final enum FieldTypeText:Lcom/tgs/aics/bean/FieldType;

.field public static final enum FieldTypeTextarea:Lcom/tgs/aics/bean/FieldType;

.field public static final enum FieldTypeUpload:Lcom/tgs/aics/bean/FieldType;

.field public static final enum FieldTypeVideo:Lcom/tgs/aics/bean/FieldType;


# direct methods
.method private static synthetic $values()[Lcom/tgs/aics/bean/FieldType;
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/tgs/aics/bean/FieldType;

    const/4 v1, 0x0

    .line 3
    sget-object v2, Lcom/tgs/aics/bean/FieldType;->FieldTypeInput:Lcom/tgs/aics/bean/FieldType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/tgs/aics/bean/FieldType;->FieldTypeNumberInput:Lcom/tgs/aics/bean/FieldType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/tgs/aics/bean/FieldType;->FieldTypeTextarea:Lcom/tgs/aics/bean/FieldType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/tgs/aics/bean/FieldType;->FieldTypeSelect:Lcom/tgs/aics/bean/FieldType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/tgs/aics/bean/FieldType;->FieldTypeMultipleSelect:Lcom/tgs/aics/bean/FieldType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/tgs/aics/bean/FieldType;->FieldTypeDate:Lcom/tgs/aics/bean/FieldType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tgs/aics/bean/FieldType;->FieldTypeDateRange:Lcom/tgs/aics/bean/FieldType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tgs/aics/bean/FieldType;->FieldTypeText:Lcom/tgs/aics/bean/FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/tgs/aics/bean/FieldType;->FieldTypePicture:Lcom/tgs/aics/bean/FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/tgs/aics/bean/FieldType;->FieldTypeVideo:Lcom/tgs/aics/bean/FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/tgs/aics/bean/FieldType;->FieldTypeUpload:Lcom/tgs/aics/bean/FieldType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/tgs/aics/bean/FieldType;

    const-string v1, "FieldTypeInput"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/FieldType;->FieldTypeInput:Lcom/tgs/aics/bean/FieldType;

    .line 5
    new-instance v0, Lcom/tgs/aics/bean/FieldType;

    const-string v1, "FieldTypeNumberInput"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/FieldType;->FieldTypeNumberInput:Lcom/tgs/aics/bean/FieldType;

    .line 6
    new-instance v0, Lcom/tgs/aics/bean/FieldType;

    const-string v1, "FieldTypeTextarea"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/FieldType;->FieldTypeTextarea:Lcom/tgs/aics/bean/FieldType;

    .line 7
    new-instance v0, Lcom/tgs/aics/bean/FieldType;

    const-string v1, "FieldTypeSelect"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/FieldType;->FieldTypeSelect:Lcom/tgs/aics/bean/FieldType;

    .line 8
    new-instance v0, Lcom/tgs/aics/bean/FieldType;

    const-string v1, "FieldTypeMultipleSelect"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/FieldType;->FieldTypeMultipleSelect:Lcom/tgs/aics/bean/FieldType;

    .line 9
    new-instance v0, Lcom/tgs/aics/bean/FieldType;

    const-string v1, "FieldTypeDate"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/FieldType;->FieldTypeDate:Lcom/tgs/aics/bean/FieldType;

    .line 10
    new-instance v0, Lcom/tgs/aics/bean/FieldType;

    const-string v1, "FieldTypeDateRange"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/FieldType;->FieldTypeDateRange:Lcom/tgs/aics/bean/FieldType;

    .line 11
    new-instance v0, Lcom/tgs/aics/bean/FieldType;

    const-string v1, "FieldTypeText"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/FieldType;->FieldTypeText:Lcom/tgs/aics/bean/FieldType;

    .line 12
    new-instance v0, Lcom/tgs/aics/bean/FieldType;

    const-string v1, "FieldTypePicture"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/FieldType;->FieldTypePicture:Lcom/tgs/aics/bean/FieldType;

    .line 13
    new-instance v0, Lcom/tgs/aics/bean/FieldType;

    const-string v1, "FieldTypeVideo"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/FieldType;->FieldTypeVideo:Lcom/tgs/aics/bean/FieldType;

    .line 14
    new-instance v0, Lcom/tgs/aics/bean/FieldType;

    const-string v1, "FieldTypeUpload"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/FieldType;->FieldTypeUpload:Lcom/tgs/aics/bean/FieldType;

    .line 3
    invoke-static {}, Lcom/tgs/aics/bean/FieldType;->$values()[Lcom/tgs/aics/bean/FieldType;

    move-result-object v0

    sput-object v0, Lcom/tgs/aics/bean/FieldType;->$VALUES:[Lcom/tgs/aics/bean/FieldType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tgs/aics/bean/FieldType;
    .locals 1

    .line 3
    const-class v0, Lcom/tgs/aics/bean/FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tgs/aics/bean/FieldType;

    return-object p0
.end method

.method public static values()[Lcom/tgs/aics/bean/FieldType;
    .locals 1

    .line 3
    sget-object v0, Lcom/tgs/aics/bean/FieldType;->$VALUES:[Lcom/tgs/aics/bean/FieldType;

    invoke-virtual {v0}, [Lcom/tgs/aics/bean/FieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tgs/aics/bean/FieldType;

    return-object v0
.end method
