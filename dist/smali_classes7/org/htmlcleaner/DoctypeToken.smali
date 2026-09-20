.class public Lorg/htmlcleaner/DoctypeToken;
.super Lorg/htmlcleaner/BaseHtmlNode;
.source "DoctypeToken.java"

# interfaces
.implements Lorg/htmlcleaner/HtmlNode;


# static fields
.field public static final HTML4_0:I = 0xa

.field public static final HTML4_01:I = 0x14

.field public static final HTML4_01_FRAMESET:I = 0x17

.field public static final HTML4_01_STRICT:I = 0x15

.field public static final HTML4_01_TRANSITIONAL:I = 0x16

.field public static final HTML5:I = 0x3c

.field public static final HTML5_LEGACY_TOOL_COMPATIBLE:I = 0x3d

.field public static final UNKNOWN:I = 0x0

.field public static final XHTML1_0_FRAMESET:I = 0x21

.field public static final XHTML1_0_STRICT:I = 0x1f

.field public static final XHTML1_0_TRANSITIONAL:I = 0x20

.field public static final XHTML1_1:I = 0x28

.field public static final XHTML1_1_BASIC:I = 0x29


# instance fields
.field private part1:Ljava/lang/String;

.field private part2:Ljava/lang/String;

.field private part3:Ljava/lang/String;

.field private part4:Ljava/lang/String;

.field private type:Ljava/lang/Integer;

.field private valid:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Lorg/htmlcleaner/BaseHtmlNode;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->type:Ljava/lang/Integer;

    .line 95
    iput-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->valid:Ljava/lang/Boolean;

    .line 98
    iput-object p1, p0, Lorg/htmlcleaner/DoctypeToken;->part1:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 99
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lorg/htmlcleaner/DoctypeToken;->part2:Ljava/lang/String;

    .line 100
    invoke-direct {p0, p3}, Lorg/htmlcleaner/DoctypeToken;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/htmlcleaner/DoctypeToken;->part3:Ljava/lang/String;

    .line 101
    invoke-direct {p0, p4}, Lorg/htmlcleaner/DoctypeToken;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/htmlcleaner/DoctypeToken;->part4:Ljava/lang/String;

    .line 102
    invoke-direct {p0}, Lorg/htmlcleaner/DoctypeToken;->validate()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lorg/htmlcleaner/BaseHtmlNode;-><init>()V

    const/4 p4, 0x0

    .line 71
    iput-object p4, p0, Lorg/htmlcleaner/DoctypeToken;->type:Ljava/lang/Integer;

    .line 95
    iput-object p4, p0, Lorg/htmlcleaner/DoctypeToken;->valid:Ljava/lang/Boolean;

    .line 110
    iput-object p1, p0, Lorg/htmlcleaner/DoctypeToken;->part1:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 111
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lorg/htmlcleaner/DoctypeToken;->part2:Ljava/lang/String;

    .line 112
    invoke-direct {p0, p3}, Lorg/htmlcleaner/DoctypeToken;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/htmlcleaner/DoctypeToken;->part3:Ljava/lang/String;

    .line 113
    invoke-direct {p0, p5}, Lorg/htmlcleaner/DoctypeToken;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/htmlcleaner/DoctypeToken;->part4:Ljava/lang/String;

    .line 114
    invoke-direct {p0}, Lorg/htmlcleaner/DoctypeToken;->validate()V

    return-void
.end method

.method private clean(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0x3e

    const/16 v1, 0x20

    .line 119
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3c

    .line 120
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x26

    .line 121
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x27

    .line 122
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x22

    .line 123
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private validate()V
    .locals 6

    .line 148
    iget-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->part2:Ljava/lang/String;

    const-string v1, "public"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "system"

    const/4 v3, 0x1

    .line 283
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->part2:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "html"

    .line 153
    iget-object v4, p0, Lorg/htmlcleaner/DoctypeToken;->part1:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->part2:Ljava/lang/String;

    if-nez v0, :cond_0

    const/16 v0, 0x3c

    .line 154
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->type:Ljava/lang/Integer;

    .line 155
    iput-object v3, p0, Lorg/htmlcleaner/DoctypeToken;->valid:Ljava/lang/Boolean;

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->part2:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    const-string v0, "-//W3C//DTD HTML 4.0//EN"

    .line 164
    invoke-virtual {p0}, Lorg/htmlcleaner/DoctypeToken;->getPublicId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, ""

    if-eqz v0, :cond_3

    const/16 v0, 0xa

    .line 165
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->type:Ljava/lang/Integer;

    const-string v0, "http://www.w3.org/TR/REC-html40/strict.dtd"

    .line 166
    iget-object v5, p0, Lorg/htmlcleaner/DoctypeToken;->part4:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/htmlcleaner/DoctypeToken;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 169
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->valid:Ljava/lang/Boolean;

    goto :goto_1

    .line 167
    :cond_2
    :goto_0
    iput-object v3, p0, Lorg/htmlcleaner/DoctypeToken;->valid:Ljava/lang/Boolean;

    :cond_3
    :goto_1
    const-string v0, "-//W3C//DTD HTML 4.01//EN"

    .line 176
    invoke-virtual {p0}, Lorg/htmlcleaner/DoctypeToken;->getPublicId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x15

    .line 177
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->type:Ljava/lang/Integer;

    const-string v0, "http://www.w3.org/TR/html4/strict.dtd"

    .line 178
    iget-object v5, p0, Lorg/htmlcleaner/DoctypeToken;->part4:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/htmlcleaner/DoctypeToken;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 181
    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->valid:Ljava/lang/Boolean;

    goto :goto_3

    .line 179
    :cond_5
    :goto_2
    iput-object v3, p0, Lorg/htmlcleaner/DoctypeToken;->valid:Ljava/lang/Boolean;

    :cond_6
    :goto_3
    const-string v0, "-//W3C//DTD HTML 4.01 Transitional//EN"

    .line 188
    invoke-virtual {p0}, Lorg/htmlcleaner/DoctypeToken;->getPublicId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x16

    .line 189
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->type:Ljava/lang/Integer;

    const-string v0, "http://www.w3.org/TR/html4/loose.dtd"

    .line 190
    invoke-virtual {p0}, Lorg/htmlcleaner/DoctypeToken;->getSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 191
    iput-object v3, p0, Lorg/htmlcleaner/DoctypeToken;->valid:Ljava/lang/Boolean;

    goto :goto_4

    .line 193
    :cond_7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->valid:Ljava/lang/Boolean;

    :cond_8
    :goto_4
    const-string v0, "-//W3C//DTD HTML 4.01 Frameset//EN"

    .line 200
    invoke-virtual {p0}, Lorg/htmlcleaner/DoctypeToken;->getPublicId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x17

    .line 201
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->type:Ljava/lang/Integer;

    const-string v0, "http://www.w3.org/TR/html4/frameset.dtd"

    .line 203
    invoke-virtual {p0}, Lorg/htmlcleaner/DoctypeToken;->getSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 204
    iput-object v3, p0, Lorg/htmlcleaner/DoctypeToken;->valid:Ljava/lang/Boolean;

    goto :goto_5

    .line 206
    :cond_9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->valid:Ljava/lang/Boolean;

    :cond_a
    :goto_5
    const-string v0, "-//W3C//DTD XHTML 1.0 Strict//EN"

    .line 214
    invoke-virtual {p0}, Lorg/htmlcleaner/DoctypeToken;->getPublicId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x1f

    .line 215
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->type:Ljava/lang/Integer;

    const-string v0, "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"

    .line 216
    invoke-virtual {p0}, Lorg/htmlcleaner/DoctypeToken;->getSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 217
    iput-object v3, p0, Lorg/htmlcleaner/DoctypeToken;->valid:Ljava/lang/Boolean;

    goto :goto_6

    .line 219
    :cond_b
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->valid:Ljava/lang/Boolean;

    :cond_c
    :goto_6
    const-string v0, "-//W3C//DTD XHTML 1.0 Transitional//EN"

    .line 227
    invoke-virtual {p0}, Lorg/htmlcleaner/DoctypeToken;->getPublicId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x20

    .line 228
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->type:Ljava/lang/Integer;

    const-string v0, "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"

    .line 230
    invoke-virtual {p0}, Lorg/htmlcleaner/DoctypeToken;->getSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 231
    iput-object v3, p0, Lorg/htmlcleaner/DoctypeToken;->valid:Ljava/lang/Boolean;

    goto :goto_7

    .line 233
    :cond_d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->valid:Ljava/lang/Boolean;

    :cond_e
    :goto_7
    const-string v0, "-//W3C//DTD XHTML 1.0 Frameset//EN"

    .line 240
    invoke-virtual {p0}, Lorg/htmlcleaner/DoctypeToken;->getPublicId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0x21

    .line 241
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->type:Ljava/lang/Integer;

    const-string v0, "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd"

    .line 243
    invoke-virtual {p0}, Lorg/htmlcleaner/DoctypeToken;->getSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 244
    iput-object v3, p0, Lorg/htmlcleaner/DoctypeToken;->valid:Ljava/lang/Boolean;

    goto :goto_8

    .line 246
    :cond_f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->valid:Ljava/lang/Boolean;

    :cond_10
    :goto_8
    const-string v0, "-//W3C//DTD XHTML 1.1//EN"

    .line 253
    invoke-virtual {p0}, Lorg/htmlcleaner/DoctypeToken;->getPublicId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x28

    .line 254
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->type:Ljava/lang/Integer;

    const-string v0, "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd"

    .line 255
    invoke-virtual {p0}, Lorg/htmlcleaner/DoctypeToken;->getSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 256
    iput-object v3, p0, Lorg/htmlcleaner/DoctypeToken;->valid:Ljava/lang/Boolean;

    goto :goto_9

    .line 258
    :cond_11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->valid:Ljava/lang/Boolean;

    :cond_12
    :goto_9
    const-string v0, "-//W3C//DTD XHTML Basic 1.1//EN"

    .line 265
    invoke-virtual {p0}, Lorg/htmlcleaner/DoctypeToken;->getPublicId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0x29

    .line 266
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->type:Ljava/lang/Integer;

    const-string v0, "http://www.w3.org/TR/xhtml11/DTD/xhtml-basic11.dtd"

    .line 268
    invoke-virtual {p0}, Lorg/htmlcleaner/DoctypeToken;->getSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 269
    iput-object v3, p0, Lorg/htmlcleaner/DoctypeToken;->valid:Ljava/lang/Boolean;

    goto :goto_a

    .line 271
    :cond_13
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->valid:Ljava/lang/Boolean;

    .line 276
    :cond_14
    :goto_a
    iget-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->part2:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "about:legacy-compat"

    .line 281
    invoke-virtual {p0}, Lorg/htmlcleaner/DoctypeToken;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x3d

    .line 282
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->type:Ljava/lang/Integer;

    .line 283
    iput-object v3, p0, Lorg/htmlcleaner/DoctypeToken;->valid:Ljava/lang/Boolean;

    .line 287
    :cond_15
    iget-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->type:Ljava/lang/Integer;

    if-nez v0, :cond_16

    .line 288
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->type:Ljava/lang/Integer;

    .line 289
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->valid:Ljava/lang/Boolean;

    :cond_16
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 5

    .line 295
    iget-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->part1:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "<!DOCTYPE>"

    return-object v0

    .line 304
    :cond_0
    iget-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    iget-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    const-string v0, "<!DOCTYPE html"

    goto :goto_0

    :cond_1
    const-string v0, "<!DOCTYPE HTML"

    goto :goto_0

    .line 314
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<!DOCTYPE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/htmlcleaner/DoctypeToken;->part1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    :goto_0
    iget-object v1, p0, Lorg/htmlcleaner/DoctypeToken;->part2:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/htmlcleaner/DoctypeToken;->part2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/htmlcleaner/DoctypeToken;->part3:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    .line 321
    iget-object v4, p0, Lorg/htmlcleaner/DoctypeToken;->part4:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/htmlcleaner/DoctypeToken;->part4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getPart1()Ljava/lang/String;
    .locals 1

    .line 365
    iget-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->part1:Ljava/lang/String;

    return-object v0
.end method

.method public getPart2()Ljava/lang/String;
    .locals 1

    .line 369
    iget-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->part2:Ljava/lang/String;

    return-object v0
.end method

.method public getPart3()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 378
    iget-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->part3:Ljava/lang/String;

    return-object v0
.end method

.method public getPart4()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 387
    iget-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->part4:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .line 354
    iget-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->part3:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->part4:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 339
    iget-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/htmlcleaner/DoctypeToken;->valid:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/htmlcleaner/Serializer;Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/htmlcleaner/DoctypeToken;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 332
    invoke-virtual {p0}, Lorg/htmlcleaner/DoctypeToken;->getContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
