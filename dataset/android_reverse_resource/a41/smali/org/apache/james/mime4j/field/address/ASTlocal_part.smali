.class public Lorg/apache/james/mime4j/field/address/ASTlocal_part;
.super Lorg/apache/james/mime4j/field/address/SimpleNode;
.source "ASTlocal_part.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/address/SimpleNode;-><init>(I)V

    .line 9
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/address/AddressListParser;I)V
    .locals 0
    .param p1, "p"    # Lorg/apache/james/mime4j/field/address/AddressListParser;
    .param p2, "id"    # I

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/field/address/SimpleNode;-><init>(Lorg/apache/james/mime4j/field/address/AddressListParser;I)V

    .line 13
    return-void
.end method


# virtual methods
.method public jjtAccept(Lorg/apache/james/mime4j/field/address/AddressListParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "visitor"    # Lorg/apache/james/mime4j/field/address/AddressListParserVisitor;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 18
    invoke-interface {p1, p0, p2}, Lorg/apache/james/mime4j/field/address/AddressListParserVisitor;->visit(Lorg/apache/james/mime4j/field/address/ASTlocal_part;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
