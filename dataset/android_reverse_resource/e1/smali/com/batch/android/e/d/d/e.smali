.class public Lcom/batch/android/e/d/d/e;
.super Landroid/widget/TextView;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/e/d/d/d;


# static fields
.field public static a:Landroid/graphics/Typeface;

.field public static b:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/batch/android/e/d/d/e;->a:Landroid/graphics/Typeface;

    .line 27
    sput-object v0, Lcom/batch/android/e/d/d/e;->b:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    return-void
.end method

.method protected static a(Landroid/widget/TextView;Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/batch/android/e/d/a/b;->a(Landroid/view/View;Ljava/util/Map;)V

    .line 64
    const/4 v7, 0x0

    .line 66
    const/4 v6, 0x0

    .line 67
    const/4 v5, 0x0

    .line 68
    const/4 v4, 0x0

    .line 69
    const/4 v3, 0x0

    .line 70
    const/4 v2, 0x0

    .line 72
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 74
    const-string v9, "color"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    move v1, v3

    move-object v2, v4

    move v3, v5

    move v4, v6

    move-object v5, v7

    :goto_1
    move v6, v4

    move-object v7, v5

    move-object v4, v2

    move v5, v3

    move v2, v0

    move v3, v1

    .line 182
    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    .line 82
    const-string v9, "TextView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unparsable text color ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ")"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v1}, Lcom/batch/android/c/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    move v1, v3

    move-object v2, v4

    move v3, v5

    move v4, v6

    move-object v5, v7

    .line 83
    goto :goto_1

    .line 86
    :cond_0
    const-string v9, "text-align"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 88
    const-string v1, "left"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move v1, v3

    move v3, v5

    move-object v5, v0

    move v0, v2

    move-object v2, v4

    move v4, v6

    goto :goto_1

    .line 92
    :cond_1
    const-string v1, "right"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move v1, v3

    move v3, v5

    move-object v5, v0

    move v0, v2

    move-object v2, v4

    move v4, v6

    goto :goto_1

    .line 96
    :cond_2
    const-string v1, "center"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 98
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move v1, v3

    move v3, v5

    move-object v5, v0

    move v0, v2

    move-object v2, v4

    move v4, v6

    goto/16 :goto_1

    .line 100
    :cond_3
    const-string v1, "auto"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 102
    const/4 v0, 0x0

    move v1, v3

    move v3, v5

    move-object v5, v0

    move v0, v2

    move-object v2, v4

    move v4, v6

    goto/16 :goto_1

    .line 106
    :cond_4
    const-string v9, "font-weight"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 108
    const-string v1, "bold"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "700"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 110
    :cond_5
    const/4 v0, 0x1

    move v1, v3

    move v3, v5

    move-object v5, v7

    move v12, v2

    move-object v2, v4

    move v4, v0

    move v0, v12

    goto/16 :goto_1

    .line 114
    :cond_6
    const-string v9, "font-style"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 116
    const-string v1, "italic"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 118
    const/4 v0, 0x1

    move v1, v3

    move-object v5, v7

    move v3, v0

    move v0, v2

    move-object v2, v4

    move v4, v6

    goto/16 :goto_1

    .line 122
    :cond_7
    const-string v9, "font"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 124
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move v1, v3

    move v4, v6

    move v3, v5

    move-object v5, v7

    move v12, v2

    move-object v2, v0

    move v0, v12

    goto/16 :goto_1

    .line 127
    :cond_8
    const-string v9, "font-size"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 129
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    const-string v1, "sp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 131
    if-eqz v1, :cond_9

    .line 133
    const-string v9, "sp"

    const-string v10, ""

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 136
    :cond_9
    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    .line 137
    if-eqz v9, :cond_a

    .line 140
    if-eqz v1, :cond_b

    const/4 v0, 0x2

    :goto_2
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_a
    move v0, v2

    move v1, v3

    move-object v2, v4

    move v3, v5

    move v4, v6

    move-object v5, v7

    .line 142
    goto/16 :goto_1

    .line 140
    :cond_b
    const/4 v0, 0x1

    goto :goto_2

    .line 144
    :cond_c
    const-string v9, "letter-spacing"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 146
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v1, v9, :cond_11

    .line 148
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_d

    .line 151
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    :cond_d
    move v0, v2

    move v1, v3

    move-object v2, v4

    move v3, v5

    move v4, v6

    move-object v5, v7

    .line 153
    goto/16 :goto_1

    .line 156
    :cond_e
    const-string v9, "line-height"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 158
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_20

    .line 161
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_3
    move v1, v3

    move-object v2, v4

    move v3, v5

    move v4, v6

    move-object v5, v7

    .line 163
    goto/16 :goto_1

    .line 165
    :cond_f
    const-string v9, "line-spacing"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 167
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_1f

    .line 170
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_4
    move v1, v0

    move v3, v5

    move v0, v2

    move-object v5, v7

    move-object v2, v4

    move v4, v6

    .line 172
    goto/16 :goto_1

    .line 174
    :cond_10
    const-string v9, "balanced"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-lt v1, v9, :cond_11

    .line 176
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_11

    .line 179
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_12

    const/4 v0, 0x2

    :goto_5
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBreakStrategy(I)V

    :cond_11
    move v0, v2

    move v1, v3

    move-object v2, v4

    move v3, v5

    move v4, v6

    move-object v5, v7

    goto/16 :goto_1

    :cond_12
    const/4 v0, 0x0

    goto :goto_5

    .line 184
    :cond_13
    const/16 v0, 0x11

    .line 185
    if-eqz v7, :cond_14

    .line 187
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    .line 190
    :cond_14
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 192
    const/4 v0, 0x0

    .line 194
    if-eqz v6, :cond_1a

    .line 196
    if-eqz v5, :cond_19

    .line 198
    const/4 v0, 0x3

    .line 210
    :cond_15
    :goto_6
    sget-object v1, Lcom/batch/android/e/d/d/e;->a:Landroid/graphics/Typeface;

    .line 212
    if-eqz v6, :cond_16

    .line 214
    sget-object v1, Lcom/batch/android/e/d/d/e;->b:Landroid/graphics/Typeface;

    .line 219
    :cond_16
    if-eqz v1, :cond_1b

    .line 221
    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 228
    :goto_7
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 230
    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-nez v0, :cond_17

    const/4 v0, 0x0

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_18

    .line 232
    :cond_17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1e

    .line 234
    const/4 v0, 0x0

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_1c

    :goto_8
    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_1d

    :goto_9
    invoke-virtual {p0, v3, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 242
    :cond_18
    :goto_a
    return-void

    .line 202
    :cond_19
    const/4 v0, 0x1

    goto :goto_6

    .line 205
    :cond_1a
    if-eqz v5, :cond_15

    .line 207
    const/4 v0, 0x2

    goto :goto_6

    .line 225
    :cond_1b
    invoke-static {v4, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_7

    .line 234
    :cond_1c
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v3

    goto :goto_8

    .line 235
    :cond_1d
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v2

    goto :goto_9

    .line 239
    :cond_1e
    invoke-virtual {p0, v3, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    goto :goto_a

    :cond_1f
    move v0, v3

    goto/16 :goto_4

    :cond_20
    move v0, v2

    goto/16 :goto_3
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/batch/android/e/d/d/e;->a(Landroid/widget/TextView;Ljava/util/Map;)V

    .line 54
    return-void
.end method
