.class public Lcom/github/mikephil/charting/formatter/FormattedStringCache;
.super Ljava/lang/Object;
.source "FormattedStringCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/formatter/FormattedStringCache$PrimDouble;,
        Lcom/github/mikephil/charting/formatter/FormattedStringCache$PrimFloat;,
        Lcom/github/mikephil/charting/formatter/FormattedStringCache$PrimIntFloat;,
        Lcom/github/mikephil/charting/formatter/FormattedStringCache$Generic;
    }
.end annotation


# instance fields
.field protected mFormat:Ljava/text/Format;


# direct methods
.method public constructor <init>(Ljava/text/Format;)V
    .locals 0
    .param p1, "format"    # Ljava/text/Format;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/github/mikephil/charting/formatter/FormattedStringCache;->mFormat:Ljava/text/Format;

    .line 29
    return-void
.end method


# virtual methods
.method public getFormat()Ljava/text/Format;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/github/mikephil/charting/formatter/FormattedStringCache;->mFormat:Ljava/text/Format;

    return-object v0
.end method
