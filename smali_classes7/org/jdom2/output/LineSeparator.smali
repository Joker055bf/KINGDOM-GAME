.class public final enum Lorg/jdom2/output/LineSeparator;
.super Ljava/lang/Enum;
.source "LineSeparator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jdom2/output/LineSeparator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jdom2/output/LineSeparator;

.field public static final enum CR:Lorg/jdom2/output/LineSeparator;

.field public static final enum CRNL:Lorg/jdom2/output/LineSeparator;

.field public static final enum DEFAULT:Lorg/jdom2/output/LineSeparator;

.field public static final enum DOS:Lorg/jdom2/output/LineSeparator;

.field public static final enum NL:Lorg/jdom2/output/LineSeparator;

.field public static final enum NONE:Lorg/jdom2/output/LineSeparator;

.field public static final enum SYSTEM:Lorg/jdom2/output/LineSeparator;

.field public static final enum UNIX:Lorg/jdom2/output/LineSeparator;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 119
    new-instance v0, Lorg/jdom2/output/LineSeparator;

    const-string v1, "CRNL"

    const/4 v2, 0x0

    const-string v3, "\r\n"

    invoke-direct {v0, v1, v2, v3}, Lorg/jdom2/output/LineSeparator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jdom2/output/LineSeparator;->CRNL:Lorg/jdom2/output/LineSeparator;

    .line 124
    new-instance v1, Lorg/jdom2/output/LineSeparator;

    const-string v4, "NL"

    const/4 v5, 0x1

    const-string v6, "\n"

    invoke-direct {v1, v4, v5, v6}, Lorg/jdom2/output/LineSeparator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/jdom2/output/LineSeparator;->NL:Lorg/jdom2/output/LineSeparator;

    .line 128
    new-instance v4, Lorg/jdom2/output/LineSeparator;

    const-string v7, "\r"

    const-string v8, "CR"

    const/4 v9, 0x2

    invoke-direct {v4, v8, v9, v7}, Lorg/jdom2/output/LineSeparator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/jdom2/output/LineSeparator;->CR:Lorg/jdom2/output/LineSeparator;

    .line 131
    new-instance v7, Lorg/jdom2/output/LineSeparator;

    const-string v8, "DOS"

    const/4 v10, 0x3

    invoke-direct {v7, v8, v10, v3}, Lorg/jdom2/output/LineSeparator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/jdom2/output/LineSeparator;->DOS:Lorg/jdom2/output/LineSeparator;

    .line 134
    new-instance v8, Lorg/jdom2/output/LineSeparator;

    const-string v11, "UNIX"

    const/4 v12, 0x4

    invoke-direct {v8, v11, v12, v6}, Lorg/jdom2/output/LineSeparator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/jdom2/output/LineSeparator;->UNIX:Lorg/jdom2/output/LineSeparator;

    .line 143
    new-instance v6, Lorg/jdom2/output/LineSeparator;

    const-string v11, "line.separator"

    invoke-static {v11, v3}, Lorg/jdom2/internal/SystemProperty;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v11, "SYSTEM"

    const/4 v13, 0x5

    invoke-direct {v6, v11, v13, v3}, Lorg/jdom2/output/LineSeparator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/jdom2/output/LineSeparator;->SYSTEM:Lorg/jdom2/output/LineSeparator;

    .line 146
    new-instance v3, Lorg/jdom2/output/LineSeparator;

    const/4 v11, 0x0

    const-string v14, "NONE"

    const/4 v15, 0x6

    invoke-direct {v3, v14, v15, v11}, Lorg/jdom2/output/LineSeparator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/jdom2/output/LineSeparator;->NONE:Lorg/jdom2/output/LineSeparator;

    .line 157
    new-instance v11, Lorg/jdom2/output/LineSeparator;

    invoke-static {}, Lorg/jdom2/output/LineSeparator;->getDefaultLineSeparator()Ljava/lang/String;

    move-result-object v14

    const-string v15, "DEFAULT"

    const/4 v13, 0x7

    invoke-direct {v11, v15, v13, v14}, Lorg/jdom2/output/LineSeparator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/jdom2/output/LineSeparator;->DEFAULT:Lorg/jdom2/output/LineSeparator;

    const/16 v14, 0x8

    new-array v14, v14, [Lorg/jdom2/output/LineSeparator;

    aput-object v0, v14, v2

    aput-object v1, v14, v5

    aput-object v4, v14, v9

    aput-object v7, v14, v10

    aput-object v8, v14, v12

    const/4 v0, 0x5

    aput-object v6, v14, v0

    const/4 v0, 0x6

    aput-object v3, v14, v0

    aput-object v11, v14, v13

    .line 114
    sput-object v14, Lorg/jdom2/output/LineSeparator;->$VALUES:[Lorg/jdom2/output/LineSeparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 194
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 195
    iput-object p3, p0, Lorg/jdom2/output/LineSeparator;->value:Ljava/lang/String;

    return-void
.end method

.method private static getDefaultLineSeparator()Ljava/lang/String;
    .locals 4

    const-string v0, "org.jdom2.output.LineSeparator"

    const-string v1, "DEFAULT"

    .line 164
    invoke-static {v0, v1}, Lorg/jdom2/internal/SystemProperty;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "\r\n"

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    const-string v1, "SYSTEM"

    .line 172
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "line.separator"

    .line 173
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v1, "CRNL"

    .line 174
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v2

    :cond_2
    const-string v1, "NL"

    .line 176
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "\n"

    if-eqz v1, :cond_3

    return-object v3

    :cond_3
    const-string v1, "CR"

    .line 178
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "\r"

    return-object v0

    :cond_4
    const-string v1, "DOS"

    .line 180
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v2

    :cond_5
    const-string v1, "UNIX"

    .line 182
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v3

    :cond_6
    const-string v1, "NONE"

    .line 184
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x0

    :cond_7
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jdom2/output/LineSeparator;
    .locals 1

    .line 114
    const-class v0, Lorg/jdom2/output/LineSeparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jdom2/output/LineSeparator;

    return-object p0
.end method

.method public static values()[Lorg/jdom2/output/LineSeparator;
    .locals 1

    .line 114
    sget-object v0, Lorg/jdom2/output/LineSeparator;->$VALUES:[Lorg/jdom2/output/LineSeparator;

    invoke-virtual {v0}, [Lorg/jdom2/output/LineSeparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jdom2/output/LineSeparator;

    return-object v0
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/jdom2/output/LineSeparator;->value:Ljava/lang/String;

    return-object v0
.end method
