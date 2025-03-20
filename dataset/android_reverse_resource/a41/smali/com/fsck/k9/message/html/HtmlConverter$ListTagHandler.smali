.class public Lcom/fsck/k9/message/html/HtmlConverter$ListTagHandler;
.super Ljava/lang/Object;
.source "HtmlConverter.java"

# interfaces
.implements Landroid/text/Html$TagHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/message/html/HtmlConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListTagHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V
    .locals 2
    .param p1, "opening"    # Z
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "output"    # Landroid/text/Editable;
    .param p4, "xmlReader"    # Lorg/xml/sax/XMLReader;

    .prologue
    .line 1326
    const-string v1, "ul"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1327
    if-eqz p1, :cond_3

    .line 1328
    const/4 v0, 0x0

    .line 1329
    .local v0, "lastChar":C
    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1330
    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p3, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 1332
    :cond_0
    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 1333
    const-string v1, "\r\n"

    invoke-interface {p3, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 1340
    .end local v0    # "lastChar":C
    :cond_1
    :goto_0
    const-string v1, "li"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1341
    if-eqz p1, :cond_4

    .line 1342
    const-string v1, "\t\u2022  "

    invoke-interface {p3, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 1347
    :cond_2
    :goto_1
    return-void

    .line 1336
    :cond_3
    const-string v1, "\r\n"

    invoke-interface {p3, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 1344
    :cond_4
    const-string v1, "\r\n"

    invoke-interface {p3, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1
.end method
