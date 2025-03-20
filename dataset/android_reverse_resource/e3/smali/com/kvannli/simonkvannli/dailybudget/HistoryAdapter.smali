.class Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "HistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$OnItemClickListener;,
        Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final TYPE_ITEM:I = 0x0

.field private static final TYPE_SEPARATOR:I = 0x1


# instance fields
.field activity:Landroid/content/Context;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private nowDone:Z

.field private only30:Z

.field private sectionHeader:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x43d6bfe1cf658a3L

    const-string v2, "com/kvannli/simonkvannli/dailybudget/HistoryAdapter"

    const/16 v3, 0x3c

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-boolean v0, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->only30:Z

    .line 30
    iput-boolean v0, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->nowDone:Z

    aput-boolean v3, v1, v0

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->mData:Ljava/util/ArrayList;

    aput-boolean v3, v1, v3

    .line 34
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->sectionHeader:Ljava/util/TreeSet;

    .line 39
    iput-object p1, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->activity:Landroid/content/Context;

    .line 40
    iput-boolean p2, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->only30:Z

    .line 41
    const-string v0, "layout_inflater"

    const/4 v2, 0x2

    aput-boolean v3, v1, v2

    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 43
    const/4 v0, 0x3

    aput-boolean v3, v1, v0

    return-void
.end method


# virtual methods
.method public addItem(Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    .line 47
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->notifyDataSetChanged()V

    .line 48
    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    return-void
.end method

.method public addSectionHeaderItem(Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    .line 52
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->sectionHeader:Ljava/util/TreeSet;

    iget-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    .line 53
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->notifyDataSetChanged()V

    .line 54
    const/16 v1, 0x8

    aput-boolean v3, v0, v1

    return-void
.end method

.method public correct_date_format(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "returnString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 152
    const-string v1, ""

    const/16 v1, 0x32

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v2, v1

    .line 154
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x33

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 155
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    const/16 v3, 0x34

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 157
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "dd. MMM yyyy"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v0, "format":Ljava/text/SimpleDateFormat;
    const/16 v3, 0x35

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 158
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 164
    const/16 v1, 0x36

    aput-boolean v5, v2, v1

    .line 165
    :goto_0
    const/16 v1, 0x3a

    aput-boolean v5, v2, v1

    return-object p1

    .line 160
    .end local p1    # "returnString":Ljava/lang/String;
    :catch_0
    move-exception v1

    const/16 v3, 0x37

    aput-boolean v5, v2, v3

    .line 161
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "HistoryAdapter correct_date_format error:"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v3, 0x38

    aput-boolean v5, v2, v3

    .line 162
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 163
    .restart local p1    # "returnString":Ljava/lang/String;
    const/16 v1, 0x39

    aput-boolean v5, v2, v1

    goto :goto_0
.end method

.method public getCount()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xd

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getItem(I)Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;
    .locals 4

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 73
    iget-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;

    const/16 v2, 0xe

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    invoke-virtual {p0, p1}, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->getItem(I)Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;

    move-result-object v1

    const/16 v2, 0x3b

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getItemId(I)J
    .locals 5

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 78
    int-to-long v2, p1

    const/16 v1, 0xf

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getItemViewType(I)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 58
    iget-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->sectionHeader:Ljava/util/TreeSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0xb

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0xa

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .prologue
    const v10, 0x7f0e0094

    const/16 v9, 0x1e

    const/4 v8, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->$jacocoInit()[Z

    move-result-object v6

    .line 84
    const/16 v4, 0x10

    aput-boolean v5, v6, v4

    .line 85
    invoke-virtual {p0, p1}, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->getItemViewType(I)I

    move-result v4

    const/16 v7, 0x11

    aput-boolean v5, v6, v7

    .line 87
    iget-object v7, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 89
    .local v2, "lastObjectToReplace":I
    const/16 v7, 0x12

    aput-boolean v5, v6, v7

    .line 91
    new-instance v1, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$ViewHolder;-><init>()V

    .line 94
    .local v1, "holder":Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$ViewHolder;
    if-eq p1, v2, :cond_0

    const/16 v7, 0x13

    aput-boolean v5, v6, v7

    .line 100
    :goto_0
    packed-switch v4, :pswitch_data_0

    const/16 v4, 0x19

    aput-boolean v5, v6, v4

    move v3, v5

    move-object v0, p2

    .line 118
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 120
    if-eq p1, v2, :cond_2

    const/16 v4, 0x22

    aput-boolean v5, v6, v4

    .line 121
    :goto_2
    if-nez v3, :cond_5

    const/16 v4, 0x25

    aput-boolean v5, v6, v4

    .line 122
    iget-object v7, v1, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NOTE: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;

    invoke-virtual {v4}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->get_historyNote()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\nAMOUNT: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;

    invoke-virtual {v4}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->get_value()D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x26

    aput-boolean v5, v6, v4

    .line 123
    iget-object v7, v1, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$ViewHolder;->dateTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;

    invoke-virtual {v4}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->get_time()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x27

    aput-boolean v5, v6, v4

    .line 124
    iget-object v4, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;

    invoke-virtual {v4}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->is_minus()Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x28

    aput-boolean v5, v6, v4

    .line 125
    iget-object v4, v1, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    const-string v7, "#FFE7E7E7"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0x29

    aput-boolean v5, v6, v4

    .line 126
    iget-object v4, v1, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$ViewHolder;->dateTextView:Landroid/widget/TextView;

    const-string v7, "#FFE7E7E7"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0x2a

    aput-boolean v5, v6, v4

    .line 127
    iget-object v4, v1, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const v7, 0x7f020058

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v4, 0x2b

    aput-boolean v5, v6, v4

    .line 136
    :goto_3
    new-instance v7, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$OnItemClickListener;

    iget-object v4, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;

    invoke-virtual {v4}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->get_id()I

    move-result v4

    invoke-direct {v7, p0, p1, v4}, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$OnItemClickListener;-><init>(Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;II)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v4, 0x2f

    aput-boolean v5, v6, v4

    .line 142
    :goto_4
    const/16 v4, 0x31

    aput-boolean v5, v6, v4

    return-object v0

    .line 94
    :cond_0
    iget-boolean v7, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->only30:Z

    if-nez v7, :cond_1

    const/16 v7, 0x14

    aput-boolean v5, v6, v7

    goto/16 :goto_0

    :cond_1
    const/16 v4, 0x15

    aput-boolean v5, v6, v4

    .line 95
    iget-object v4, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040025

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .local v0, "convertView":Landroid/view/View;
    const/16 v4, 0x16

    aput-boolean v5, v6, v4

    .line 96
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    const/16 v4, 0x17

    aput-boolean v5, v6, v4

    .line 97
    new-instance v4, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$OnItemClickListener;

    const/4 v7, -0x1

    invoke-direct {v4, p0, p1, v7}, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$OnItemClickListener;-><init>(Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;II)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v4, 0x18

    aput-boolean v5, v6, v4

    move v3, v5

    goto/16 :goto_1

    .line 102
    .end local v0    # "convertView":Landroid/view/View;
    :pswitch_0
    const/4 v3, 0x0

    .local v3, "nowOnHeader":Z
    const/16 v4, 0x1a

    aput-boolean v5, v6, v4

    .line 103
    iget-object v4, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040020

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "convertView":Landroid/view/View;
    const/16 v4, 0x1b

    aput-boolean v5, v6, v4

    .line 104
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    const/16 v4, 0x1c

    aput-boolean v5, v6, v4

    .line 105
    const v4, 0x7f0e0095

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$ViewHolder;->dateTextView:Landroid/widget/TextView;

    const/16 v4, 0x1d

    aput-boolean v5, v6, v4

    .line 106
    const v4, 0x7f0e0093

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 107
    aput-boolean v5, v6, v9

    goto/16 :goto_1

    .line 112
    .end local v0    # "convertView":Landroid/view/View;
    .end local v3    # "nowOnHeader":Z
    :pswitch_1
    const/4 v3, 0x1

    .restart local v3    # "nowOnHeader":Z
    const/16 v4, 0x1f

    aput-boolean v5, v6, v4

    .line 113
    iget-object v4, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040021

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "convertView":Landroid/view/View;
    const/16 v4, 0x20

    aput-boolean v5, v6, v4

    .line 114
    const v4, 0x7f0e0096

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    const/16 v4, 0x21

    aput-boolean v5, v6, v4

    goto/16 :goto_1

    .line 120
    .end local v0    # "convertView":Landroid/view/View;
    .end local v3    # "nowOnHeader":Z
    :cond_2
    iget-boolean v4, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->only30:Z

    if-eqz v4, :cond_3

    const/16 v4, 0x23

    aput-boolean v5, v6, v4

    goto/16 :goto_4

    :cond_3
    const/16 v4, 0x24

    aput-boolean v5, v6, v4

    goto/16 :goto_2

    .line 131
    :cond_4
    iget-object v4, v1, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    const-string v7, "#FFE7E7E7"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0x2c

    aput-boolean v5, v6, v4

    .line 132
    iget-object v4, v1, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$ViewHolder;->dateTextView:Landroid/widget/TextView;

    const-string v7, "#FFE7E7E7"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0x2d

    aput-boolean v5, v6, v4

    .line 133
    iget-object v4, v1, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const v7, 0x7f020059

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v4, 0x2e

    aput-boolean v5, v6, v4

    goto/16 :goto_3

    .line 138
    :cond_5
    iget-object v7, v1, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;

    invoke-virtual {v4}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->get_date()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->correct_date_format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x30

    aput-boolean v5, v6, v4

    goto/16 :goto_4

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 63
    const/4 v1, 0x2

    const/16 v2, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method
