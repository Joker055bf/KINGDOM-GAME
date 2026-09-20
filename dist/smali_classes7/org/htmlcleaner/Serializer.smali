.class public abstract Lorg/htmlcleaner/Serializer;
.super Ljava/lang/Object;
.source "Serializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/htmlcleaner/Serializer$HeadlessTagNode;
    }
.end annotation


# instance fields
.field protected props:Lorg/htmlcleaner/CleanerProperties;


# direct methods
.method protected constructor <init>(Lorg/htmlcleaner/CleanerProperties;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/htmlcleaner/Serializer;->props:Lorg/htmlcleaner/CleanerProperties;

    return-void
.end method


# virtual methods
.method public getAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 213
    new-instance v0, Lorg/htmlcleaner/HtmlCleaner;

    iget-object v1, p0, Lorg/htmlcleaner/Serializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-direct {v0, v1}, Lorg/htmlcleaner/HtmlCleaner;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    .line 214
    invoke-virtual {v0, p1}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/lang/String;)Lorg/htmlcleaner/TagNode;

    move-result-object p1

    .line 215
    iget-object v0, p0, Lorg/htmlcleaner/Serializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v0}, Lorg/htmlcleaner/CleanerProperties;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/htmlcleaner/Serializer;->getAsString(Lorg/htmlcleaner/TagNode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAsString(Lorg/htmlcleaner/TagNode;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 209
    invoke-virtual {p0, p1, v0}, Lorg/htmlcleaner/Serializer;->getAsString(Lorg/htmlcleaner/TagNode;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAsString(Lorg/htmlcleaner/TagNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 190
    invoke-virtual {p0, p1, p2, v0}, Lorg/htmlcleaner/Serializer;->getAsString(Lorg/htmlcleaner/TagNode;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAsString(Lorg/htmlcleaner/TagNode;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 174
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 176
    :try_start_0
    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/htmlcleaner/Serializer;->write(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 179
    new-instance p2, Lorg/htmlcleaner/HtmlCleanerException;

    invoke-direct {p2, p1}, Lorg/htmlcleaner/HtmlCleanerException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getAsString(Lorg/htmlcleaner/TagNode;Z)Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lorg/htmlcleaner/Serializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v0}, Lorg/htmlcleaner/CleanerProperties;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lorg/htmlcleaner/Serializer;->getAsString(Lorg/htmlcleaner/TagNode;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected isScriptOrStyle(Lorg/htmlcleaner/TagNode;)Z
    .locals 1

    .line 267
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "script"

    .line 268
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "style"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected abstract serialize(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public write(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 227
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/htmlcleaner/Serializer;->write(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Ljava/lang/String;Z)V

    return-void
.end method

.method public write(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 240
    new-instance p4, Lorg/htmlcleaner/Serializer$HeadlessTagNode;

    const/4 v0, 0x0

    invoke-direct {p4, p0, p1, v0}, Lorg/htmlcleaner/Serializer$HeadlessTagNode;-><init>(Lorg/htmlcleaner/Serializer;Lorg/htmlcleaner/TagNode;Lorg/htmlcleaner/Serializer$1;)V

    move-object p1, p4

    .line 242
    :cond_0
    new-instance p4, Ljava/io/BufferedWriter;

    invoke-direct {p4, p2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 243
    iget-object p2, p0, Lorg/htmlcleaner/Serializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {p2}, Lorg/htmlcleaner/CleanerProperties;->isOmitXmlDeclaration()Z

    move-result p2

    if-nez p2, :cond_2

    if-eqz p3, :cond_1

    .line 246
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "<?xml version=\"1.0\" encoding=\""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, "<?xml version=\"1.0\""

    .line 248
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "?>"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 249
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 252
    :cond_2
    iget-object p2, p0, Lorg/htmlcleaner/Serializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {p2}, Lorg/htmlcleaner/CleanerProperties;->isOmitDoctypeDeclaration()Z

    move-result p2

    if-nez p2, :cond_3

    .line 253
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getDocType()Lorg/htmlcleaner/DoctypeToken;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 255
    invoke-virtual {p2, p0, p4}, Lorg/htmlcleaner/DoctypeToken;->serialize(Lorg/htmlcleaner/Serializer;Ljava/io/Writer;)V

    .line 259
    :cond_3
    invoke-virtual {p0, p1, p4}, Lorg/htmlcleaner/Serializer;->serialize(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;)V

    .line 261
    invoke-virtual {p4}, Ljava/io/Writer;->flush()V

    .line 262
    invoke-virtual {p4}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public writeToFile(Lorg/htmlcleaner/TagNode;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p0, p1, p2, v0}, Lorg/htmlcleaner/Serializer;->writeToFile(Lorg/htmlcleaner/TagNode;Ljava/lang/String;Z)V

    return-void
.end method

.method public writeToFile(Lorg/htmlcleaner/TagNode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/htmlcleaner/Serializer;->writeToFile(Lorg/htmlcleaner/TagNode;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public writeToFile(Lorg/htmlcleaner/TagNode;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p3, p4}, Lorg/htmlcleaner/Serializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;Z)V

    return-void
.end method

.method public writeToFile(Lorg/htmlcleaner/TagNode;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lorg/htmlcleaner/Serializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v0}, Lorg/htmlcleaner/CleanerProperties;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/htmlcleaner/Serializer;->writeToFile(Lorg/htmlcleaner/TagNode;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, p1, p2, v0}, Lorg/htmlcleaner/Serializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/htmlcleaner/Serializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;Z)V

    return-void
.end method

.method public writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p2, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p3, p4}, Lorg/htmlcleaner/Serializer;->write(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Ljava/lang/String;Z)V

    return-void
.end method

.method public writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lorg/htmlcleaner/Serializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v0}, Lorg/htmlcleaner/CleanerProperties;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/htmlcleaner/Serializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;Z)V

    return-void
.end method
