.class public final Lorg/mozilla/focus/search/SearchEngineWriter$Companion;
.super Ljava/lang/Object;
.source "SearchEngineWriter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/search/SearchEngineWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/mozilla/focus/search/SearchEngineWriter$Companion;-><init>()V

    return-void
.end method

.method private final xmlToString(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 8
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    const/4 v7, 0x0

    .line 61
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 62
    .local v3, "writer":Ljava/io/StringWriter;
    nop

    .line 63
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    .line 64
    .local v2, "tf":Ljavax/xml/transform/Transformer;
    const-string v4, "encoding"

    const-string v5, "UTF-8"

    invoke-virtual {v2, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v4, Ljavax/xml/transform/dom/DOMSource;

    check-cast p1, Lorg/w3c/dom/Node;

    .end local p1    # "doc":Lorg/w3c/dom/Document;
    invoke-direct {v4, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    check-cast v4, Ljavax/xml/transform/Source;

    new-instance v6, Ljavax/xml/transform/stream/StreamResult;

    move-object v0, v3

    check-cast v0, Ljava/io/Writer;

    move-object v5, v0

    invoke-direct {v6, v5}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    move-object v0, v6

    check-cast v0, Ljavax/xml/transform/Result;

    move-object v5, v0

    invoke-virtual {v2, v4, v5}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v2    # "tf":Ljavax/xml/transform/Transformer;
    :goto_0
    return-object v4

    .line 66
    :catch_0
    move-exception v1

    .local v1, "e":Ljavax/xml/transform/TransformerConfigurationException;
    move-object v4, v7

    .line 67
    goto :goto_0

    .line 68
    .end local v1    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljavax/xml/transform/TransformerException;
    move-object v4, v7

    .line 69
    goto :goto_0
.end method


# virtual methods
.method public final buildSearchEngineXML(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 15
    .param p1, "engineName"    # Ljava/lang/String;
    .param p2, "searchQuery"    # Ljava/lang/String;
    .param p3, "iconBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const-string v1, "engineName"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "searchQuery"

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "iconBitmap"

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    nop

    .line 27
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v8

    .line 28
    .local v8, "document":Lorg/w3c/dom/Document;
    if-nez v8, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v1, "OpenSearchDescription"

    invoke-interface {v8, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    .line 29
    .local v11, "rootElement":Lorg/w3c/dom/Element;
    const-string v1, "xmlns"

    const-string v2, "http://a9.com/-/spec/opensearch/1.1/"

    invoke-interface {v11, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    move-object v0, v11

    check-cast v0, Lorg/w3c/dom/Node;

    move-object v1, v0

    invoke-interface {v8, v1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 32
    const-string v1, "ShortName"

    invoke-interface {v8, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    .line 33
    .local v12, "shortNameElement":Lorg/w3c/dom/Element;
    const-string v1, "shortNameElement"

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 34
    check-cast v12, Lorg/w3c/dom/Node;

    .end local v12    # "shortNameElement":Lorg/w3c/dom/Element;
    invoke-interface {v11, v12}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 36
    const-string v1, "Image"

    invoke-interface {v8, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    .line 37
    .local v10, "imageElement":Lorg/w3c/dom/Element;
    const-string v1, "width"

    const-string v2, "16"

    invoke-interface {v10, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v1, "height"

    const-string v2, "16"

    invoke-interface {v10, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v1, "imageElement"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Lorg/mozilla/focus/utils/BitmapUtils;->getBase64EncodedDataUriFromBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 40
    check-cast v10, Lorg/w3c/dom/Node;

    .end local v10    # "imageElement":Lorg/w3c/dom/Element;
    invoke-interface {v11, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 42
    const-string v1, "Description"

    invoke-interface {v8, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 43
    .local v7, "descriptionElement":Lorg/w3c/dom/Element;
    const-string v1, "descriptionElement"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 44
    check-cast v7, Lorg/w3c/dom/Node;

    .end local v7    # "descriptionElement":Lorg/w3c/dom/Element;
    invoke-interface {v11, v7}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 46
    const-string v1, "Url"

    invoke-interface {v8, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v14

    .line 47
    .local v14, "urlElement":Lorg/w3c/dom/Element;
    const-string v1, "type"

    const-string v2, "text/html"

    invoke-interface {v14, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v2, "%s"

    const-string v3, "{searchTerms}"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 50
    .local v13, "templateSearchString":Ljava/lang/String;
    const-string v1, "template"

    invoke-interface {v14, v1, v13}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    check-cast v14, Lorg/w3c/dom/Node;

    .end local v14    # "urlElement":Lorg/w3c/dom/Element;
    invoke-interface {v11, v14}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 53
    check-cast p0, Lorg/mozilla/focus/search/SearchEngineWriter$Companion;

    .end local p0    # "this":Lorg/mozilla/focus/search/SearchEngineWriter$Companion;
    invoke-direct {p0, v8}, Lorg/mozilla/focus/search/SearchEngineWriter$Companion;->xmlToString(Lorg/w3c/dom/Document;)Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 56
    .end local v8    # "document":Lorg/w3c/dom/Document;
    .end local v11    # "rootElement":Lorg/w3c/dom/Element;
    .end local v13    # "templateSearchString":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 54
    :catch_0
    move-exception v9

    .line 55
    .local v9, "e":Ljavax/xml/parsers/ParserConfigurationException;
    const-string v1, "SearchEngineWriter"

    const-string v2, "Couldn\'t create new Document for building search engine XML"

    check-cast v9, Ljava/lang/Throwable;

    .end local v9    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    const/4 v1, 0x0

    goto :goto_0
.end method
