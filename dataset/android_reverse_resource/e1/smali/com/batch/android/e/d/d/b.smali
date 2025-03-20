.class public Lcom/batch/android/e/d/d/b;
.super Lcom/batch/android/e/d/b;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/e/d/d/d;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/e/d/d/b$a;
    }
.end annotation


# instance fields
.field private x:Ljava/lang/String;

.field private y:Lcom/batch/android/e/d/d/b$a;

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/batch/android/e/d/d/b$a;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/batch/android/e/d/b;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/batch/android/e/d/d/b;->z:I

    .line 30
    iput-object p2, p0, Lcom/batch/android/e/d/d/b;->x:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/batch/android/e/d/d/b;->y:Lcom/batch/android/e/d/d/b$a;

    .line 33
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "separatorPrefix cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    if-nez p3, :cond_1

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "styleProvider cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/batch/android/e/d/b;->addView(Landroid/view/View;)V

    .line 59
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 9
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
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 87
    invoke-static {p0, p1}, Lcom/batch/android/e/d/a/b;->a(Landroid/view/View;Ljava/util/Map;)V

    .line 89
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 91
    const-string v3, "flex-justify"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 93
    const-string v1, "center"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {p0, v6}, Lcom/batch/android/e/d/d/b;->setJustifyContent(I)V

    goto :goto_0

    .line 97
    :cond_1
    const-string v1, "end"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    invoke-virtual {p0, v5}, Lcom/batch/android/e/d/d/b;->setJustifyContent(I)V

    goto :goto_0

    .line 101
    :cond_2
    const-string v1, "start"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 103
    invoke-virtual {p0, v4}, Lcom/batch/android/e/d/d/b;->setJustifyContent(I)V

    goto :goto_0

    .line 105
    :cond_3
    const-string v1, "space-around"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 107
    invoke-virtual {p0, v8}, Lcom/batch/android/e/d/d/b;->setJustifyContent(I)V

    goto :goto_0

    .line 109
    :cond_4
    const-string v1, "space-between"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0, v7}, Lcom/batch/android/e/d/d/b;->setJustifyContent(I)V

    goto :goto_0

    .line 115
    :cond_5
    const-string v3, "flex-align-items"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 117
    const-string v1, "baseline"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 119
    invoke-virtual {p0, v7}, Lcom/batch/android/e/d/d/b;->setAlignItems(I)V

    goto/16 :goto_0

    .line 121
    :cond_6
    const-string v1, "center"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 123
    invoke-virtual {p0, v6}, Lcom/batch/android/e/d/d/b;->setAlignItems(I)V

    goto/16 :goto_0

    .line 125
    :cond_7
    const-string v1, "stretch"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 127
    invoke-virtual {p0, v8}, Lcom/batch/android/e/d/d/b;->setAlignItems(I)V

    goto/16 :goto_0

    .line 129
    :cond_8
    const-string v1, "end"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 131
    invoke-virtual {p0, v5}, Lcom/batch/android/e/d/d/b;->setAlignItems(I)V

    goto/16 :goto_0

    .line 133
    :cond_9
    const-string v1, "start"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0, v4}, Lcom/batch/android/e/d/d/b;->setAlignItems(I)V

    goto/16 :goto_0

    .line 139
    :cond_a
    const-string v3, "flex-align-content"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 141
    const-string v1, "space-around"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 143
    invoke-virtual {p0, v8}, Lcom/batch/android/e/d/d/b;->setAlignContent(I)V

    goto/16 :goto_0

    .line 145
    :cond_b
    const-string v1, "space-between"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 147
    invoke-virtual {p0, v7}, Lcom/batch/android/e/d/d/b;->setAlignContent(I)V

    goto/16 :goto_0

    .line 149
    :cond_c
    const-string v1, "center"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 151
    invoke-virtual {p0, v6}, Lcom/batch/android/e/d/d/b;->setAlignContent(I)V

    goto/16 :goto_0

    .line 153
    :cond_d
    const-string v1, "stretch"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 155
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/batch/android/e/d/d/b;->setAlignContent(I)V

    goto/16 :goto_0

    .line 157
    :cond_e
    const-string v1, "end"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 159
    invoke-virtual {p0, v5}, Lcom/batch/android/e/d/d/b;->setAlignContent(I)V

    goto/16 :goto_0

    .line 161
    :cond_f
    const-string v1, "start"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0, v4}, Lcom/batch/android/e/d/d/b;->setAlignContent(I)V

    goto/16 :goto_0

    .line 167
    :cond_10
    const-string v3, "flex-direction"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    const-string v1, "row"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 171
    invoke-virtual {p0, v4}, Lcom/batch/android/e/d/d/b;->setFlexDirection(I)V

    goto/16 :goto_0

    .line 173
    :cond_11
    const-string v1, "row-reverse"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 175
    invoke-virtual {p0, v5}, Lcom/batch/android/e/d/d/b;->setFlexDirection(I)V

    goto/16 :goto_0

    .line 177
    :cond_12
    const-string v1, "column"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 179
    invoke-virtual {p0, v6}, Lcom/batch/android/e/d/d/b;->setFlexDirection(I)V

    goto/16 :goto_0

    .line 181
    :cond_13
    const-string v1, "column-reverse"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0, v7}, Lcom/batch/android/e/d/d/b;->setFlexDirection(I)V

    goto/16 :goto_0

    .line 187
    :cond_14
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 62
    invoke-virtual {p0}, Lcom/batch/android/e/d/d/b;->getFlexDirection()I

    move-result v1

    .line 63
    if-eqz v1, :cond_0

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 48
    iget v0, p0, Lcom/batch/android/e/d/d/b;->z:I

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/batch/android/e/d/d/b;->b()V

    .line 52
    :cond_0
    invoke-super {p0, p1}, Lcom/batch/android/e/d/b;->addView(Landroid/view/View;)V

    .line 53
    invoke-virtual {p0}, Lcom/batch/android/e/d/d/b;->b()V

    .line 54
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    .line 75
    iget-object v0, p0, Lcom/batch/android/e/d/d/b;->y:Lcom/batch/android/e/d/d/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/batch/android/e/d/d/b;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-sep-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/batch/android/e/d/d/b;->z:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/batch/android/e/d/d/b$a;->a(Lcom/batch/android/e/d/d/b;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 76
    new-instance v1, Lcom/batch/android/e/d/d/c;

    invoke-virtual {p0}, Lcom/batch/android/e/d/d/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/batch/android/e/d/d/c;-><init>(Landroid/content/Context;)V

    .line 77
    invoke-virtual {p0}, Lcom/batch/android/e/d/d/b;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/batch/android/e/d/b$g;

    invoke-virtual {p0}, Lcom/batch/android/e/d/d/b;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/batch/android/e/d/b$g;-><init>(II)V

    invoke-static {v2, v3, v0}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/Context;Lcom/batch/android/e/d/b$g;Ljava/util/Map;)Lcom/batch/android/e/d/b$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/batch/android/e/d/d/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    invoke-virtual {v1, v0}, Lcom/batch/android/e/d/d/c;->a(Ljava/util/Map;)V

    .line 79
    invoke-direct {p0, v1}, Lcom/batch/android/e/d/d/b;->a(Landroid/view/View;)V

    .line 81
    iget v0, p0, Lcom/batch/android/e/d/d/b;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/batch/android/e/d/d/b;->z:I

    .line 82
    return-void
.end method

.method public getSeparatorPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/batch/android/e/d/d/b;->x:Ljava/lang/String;

    return-object v0
.end method
