.class public Lcom/github/mikephil/charting/formatter/FormattedStringCache$PrimIntFloat;
.super Lcom/github/mikephil/charting/formatter/FormattedStringCache;
.source "FormattedStringCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/formatter/FormattedStringCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrimIntFloat"
.end annotation


# instance fields
.field private cachedStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cachedValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/text/Format;)V
    .locals 1
    .param p1, "format"    # Ljava/text/Format;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/formatter/FormattedStringCache;-><init>(Ljava/text/Format;)V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/formatter/FormattedStringCache$PrimIntFloat;->cachedValues:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/formatter/FormattedStringCache$PrimIntFloat;->cachedStrings:Ljava/util/ArrayList;

    .line 82
    return-void
.end method


# virtual methods
.method public getFormattedValue(FI)Ljava/lang/String;
    .locals 6
    .param p1, "value"    # F
    .param p2, "key"    # I

    .prologue
    .line 89
    const/4 v1, 0x1

    .line 90
    .local v1, "hasValueAtdataSetIndex":Z
    iget-object v3, p0, Lcom/github/mikephil/charting/formatter/FormattedStringCache$PrimIntFloat;->cachedValues:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, p2, :cond_2

    .line 91
    move v2, p2

    .line 92
    .local v2, "p":I
    :goto_0
    if-ltz v2, :cond_1

    .line 93
    if-nez v2, :cond_0

    .line 94
    iget-object v3, p0, Lcom/github/mikephil/charting/formatter/FormattedStringCache$PrimIntFloat;->cachedValues:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v3, p0, Lcom/github/mikephil/charting/formatter/FormattedStringCache$PrimIntFloat;->cachedStrings:Ljava/util/ArrayList;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 97
    :cond_0
    iget-object v3, p0, Lcom/github/mikephil/charting/formatter/FormattedStringCache$PrimIntFloat;->cachedValues:Ljava/util/ArrayList;

    const/high16 v4, 0x7fc00000    # Float.NaN

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v3, p0, Lcom/github/mikephil/charting/formatter/FormattedStringCache$PrimIntFloat;->cachedStrings:Ljava/util/ArrayList;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 102
    :cond_1
    const/4 v1, 0x0

    .line 105
    .end local v2    # "p":I
    :cond_2
    if-eqz v1, :cond_3

    .line 106
    iget-object v3, p0, Lcom/github/mikephil/charting/formatter/FormattedStringCache$PrimIntFloat;->cachedValues:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 107
    .local v0, "cachedValue":Ljava/lang/Float;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, v3, p1

    if-nez v3, :cond_5

    const/4 v1, 0x1

    .line 110
    .end local v0    # "cachedValue":Ljava/lang/Float;
    :cond_3
    :goto_2
    if-nez v1, :cond_4

    .line 111
    iget-object v3, p0, Lcom/github/mikephil/charting/formatter/FormattedStringCache$PrimIntFloat;->cachedValues:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v3, p0, Lcom/github/mikephil/charting/formatter/FormattedStringCache$PrimIntFloat;->cachedStrings:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/github/mikephil/charting/formatter/FormattedStringCache$PrimIntFloat;->mFormat:Ljava/text/Format;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_4
    iget-object v3, p0, Lcom/github/mikephil/charting/formatter/FormattedStringCache$PrimIntFloat;->cachedStrings:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 107
    .restart local v0    # "cachedValue":Ljava/lang/Float;
    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method
