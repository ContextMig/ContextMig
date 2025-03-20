.class Lcom/moonpi/swiftnotes/NoteAdapter;
.super Landroid/widget/BaseAdapter;
.source "NoteAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private adapterData:Lorg/json/JSONArray;

.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/moonpi/swiftnotes/NoteAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3480847a9206f32aL    # 8.420444197319046E-56

    const-string v2, "com/moonpi/swiftnotes/NoteAdapter"

    const/16 v3, 0x3b

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/moonpi/swiftnotes/NoteAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/NoteAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/moonpi/swiftnotes/NoteAdapter;->context:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/moonpi/swiftnotes/NoteAdapter;->adapterData:Lorg/json/JSONArray;

    const/4 v0, 0x0

    aput-boolean v2, v1, v0

    .line 41
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/moonpi/swiftnotes/NoteAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 42
    aput-boolean v2, v1, v2

    return-void
.end method

.method static synthetic access$000(Lcom/moonpi/swiftnotes/NoteAdapter;)Landroid/content/Context;
    .locals 4

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/NoteAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/moonpi/swiftnotes/NoteAdapter;->context:Landroid/content/Context;

    const/16 v2, 0x3a

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/NoteAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 47
    iget-object v0, p0, Lcom/moonpi/swiftnotes/NoteAdapter;->adapterData:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    aput-boolean v3, v1, v0

    .line 48
    iget-object v0, p0, Lcom/moonpi/swiftnotes/NoteAdapter;->adapterData:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v2, 0x3

    aput-boolean v3, v1, v2

    .line 51
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x4

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/NoteAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    invoke-virtual {p0, p1}, Lcom/moonpi/swiftnotes/NoteAdapter;->getItem(I)Lorg/json/JSONObject;

    move-result-object v1

    const/16 v2, 0x39

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getItem(I)Lorg/json/JSONObject;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/NoteAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 57
    iget-object v0, p0, Lcom/moonpi/swiftnotes/NoteAdapter;->adapterData:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    aput-boolean v3, v1, v0

    .line 58
    iget-object v0, p0, Lcom/moonpi/swiftnotes/NoteAdapter;->adapterData:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v2, 0x6

    aput-boolean v3, v1, v2

    .line 61
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x7

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 5

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/NoteAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 66
    const-wide/16 v2, 0x0

    const/16 v1, 0x8

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/NoteAdapter;->$jacocoInit()[Z

    move-result-object v18

    .line 74
    if-eqz p2, :cond_0

    const/16 v10, 0x9

    const/4 v11, 0x1

    aput-boolean v11, v18, v10

    .line 78
    .local v4, "convertView":Landroid/view/View;
    :goto_0
    const v10, 0x7f0b0061

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    const/16 v11, 0xc

    const/4 v12, 0x1

    aput-boolean v12, v18, v11

    .line 79
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/moonpi/swiftnotes/NoteAdapter;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f020068

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/LayerDrawable;

    const/16 v12, 0xd

    const/4 v13, 0x1

    aput-boolean v13, v18, v12

    .line 80
    const v12, 0x7f0b0062

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const/16 v13, 0xe

    const/4 v14, 0x1

    aput-boolean v14, v18, v13

    .line 81
    const v13, 0x7f0b0064

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const/16 v14, 0xf

    const/4 v15, 0x1

    aput-boolean v15, v18, v14

    .line 82
    const v14, 0x7f0b0063

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    const/16 v15, 0x10

    const/16 v16, 0x1

    aput-boolean v16, v18, v15

    .line 85
    invoke-virtual/range {p0 .. p1}, Lcom/moonpi/swiftnotes/NoteAdapter;->getItem(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 87
    .local v8, "noteObject":Lorg/json/JSONObject;
    if-nez v8, :cond_1

    .end local v4    # "convertView":Landroid/view/View;
    const/16 v10, 0x11

    const/4 v11, 0x1

    aput-boolean v11, v18, v10

    .line 168
    :goto_1
    const/16 v10, 0x38

    const/4 v11, 0x1

    aput-boolean v11, v18, v10

    return-object p2

    .line 74
    .end local v8    # "noteObject":Lorg/json/JSONObject;
    :cond_0
    const/16 v10, 0xa

    const/4 v11, 0x1

    aput-boolean v11, v18, v10

    .line 75
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/moonpi/swiftnotes/NoteAdapter;->inflater:Landroid/view/LayoutInflater;

    const v11, 0x7f03001f

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .restart local v4    # "convertView":Landroid/view/View;
    const/16 v10, 0xb

    const/4 v11, 0x1

    aput-boolean v11, v18, v10

    move-object/from16 p2, v4

    goto/16 :goto_0

    .line 87
    .end local v4    # "convertView":Landroid/view/View;
    .restart local v8    # "noteObject":Lorg/json/JSONObject;
    :cond_1
    const/16 v15, 0x12

    const/16 v16, 0x1

    aput-boolean v16, v18, v15

    .line 89
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/moonpi/swiftnotes/NoteAdapter;->context:Landroid/content/Context;

    const v16, 0x7f050031

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v15, 0x13

    const/16 v16, 0x1

    aput-boolean v16, v18, v15

    .line 90
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/moonpi/swiftnotes/NoteAdapter;->context:Landroid/content/Context;

    const v16, 0x7f050030

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0x14

    const/16 v16, 0x1

    aput-boolean v16, v18, v15

    .line 91
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/moonpi/swiftnotes/NoteAdapter;->context:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a0054

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "colour":Ljava/lang/String;
    const/16 v16, 0x12

    const/16 v15, 0x15

    const/16 v17, 0x1

    aput-boolean v17, v18, v15

    .line 93
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/16 v15, 0x16

    const/16 v17, 0x1

    aput-boolean v17, v18, v15

    .line 94
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v15, 0x17

    const/16 v17, 0x1

    :try_start_0
    aput-boolean v17, v18, v15

    .line 98
    const-string v15, "title"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "title":Ljava/lang/String;
    const/16 v15, 0x18

    const/16 v17, 0x1

    aput-boolean v17, v18, v15

    .line 99
    const-string v15, "body"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "body":Ljava/lang/String;
    const/16 v15, 0x19

    const/16 v17, 0x1

    aput-boolean v17, v18, v15

    .line 100
    const-string v15, "colour"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v15, 0x1a

    const/16 v17, 0x1

    aput-boolean v17, v18, v15

    .line 102
    const-string v15, "fontSize"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    const/16 v15, 0x1b

    const/16 v17, 0x1

    aput-boolean v17, v18, v15

    .line 105
    :goto_2
    const-string v15, "hideBody"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    const/16 v15, 0x1e

    const/16 v17, 0x1

    aput-boolean v17, v18, v15
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v15, v7

    .line 108
    :goto_3
    :try_start_1
    const-string v17, "favoured"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v5

    .line 112
    .local v5, "favoured":Ljava/lang/Boolean;
    const/16 v17, 0x21

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 115
    .end local v2    # "body":Ljava/lang/String;
    .end local v5    # "favoured":Ljava/lang/Boolean;
    .end local v9    # "title":Ljava/lang/String;
    :goto_4
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_4

    const/16 v17, 0x24

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 116
    const v17, 0x7f020057

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    const/16 v17, 0x25

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 123
    :goto_5
    sget-boolean v17, Lcom/moonpi/swiftnotes/MainActivity;->searchActive:Z

    if-eqz v17, :cond_5

    const/16 v17, 0x27

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 124
    :goto_6
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v17, 0x29

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 130
    :goto_7
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v12, 0x2b

    const/16 v17, 0x1

    aput-boolean v17, v18, v12

    .line 133
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_7

    const/16 v12, 0x2c

    const/4 v15, 0x1

    aput-boolean v15, v18, v12

    .line 134
    const/16 v12, 0x8

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v12, 0x2d

    const/4 v13, 0x1

    aput-boolean v13, v18, v12

    .line 144
    :goto_8
    sget-object v12, Lcom/moonpi/swiftnotes/MainActivity;->checkedArray:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x31

    const/4 v13, 0x1

    aput-boolean v13, v18, v12

    .line 145
    const v12, 0x7f0b007d

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    check-cast v12, Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/moonpi/swiftnotes/NoteAdapter;->context:Landroid/content/Context;

    const/16 v15, 0x32

    const/16 v16, 0x1

    aput-boolean v16, v18, v15

    .line 146
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f0a0051

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v12, 0x33

    const/4 v13, 0x1

    aput-boolean v13, v18, v12

    .line 156
    :goto_9
    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 158
    const/16 v10, 0x36

    const/4 v11, 0x1

    aput-boolean v11, v18, v10

    .line 159
    new-instance v10, Lcom/moonpi/swiftnotes/NoteAdapter$1;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v10, v0, v5, v1}, Lcom/moonpi/swiftnotes/NoteAdapter$1;-><init>(Lcom/moonpi/swiftnotes/NoteAdapter;Ljava/lang/Boolean;I)V

    invoke-virtual {v14, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v10, 0x37

    const/4 v11, 0x1

    aput-boolean v11, v18, v10

    goto/16 :goto_1

    .line 102
    .restart local v2    # "body":Ljava/lang/String;
    .restart local v9    # "title":Ljava/lang/String;
    :cond_2
    const/16 v15, 0x1c

    const/16 v17, 0x1

    :try_start_2
    aput-boolean v17, v18, v15

    .line 103
    const-string v15, "fontSize"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v6

    .local v6, "fontSize":I
    const/16 v15, 0x1d

    const/16 v16, 0x1

    :try_start_3
    aput-boolean v16, v18, v15
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move/from16 v16, v6

    goto/16 :goto_2

    .line 105
    .end local v6    # "fontSize":I
    :cond_3
    const/16 v15, 0x1f

    const/16 v17, 0x1

    :try_start_4
    aput-boolean v17, v18, v15

    .line 106
    const-string v15, "hideBody"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v7

    .local v7, "hideBody":Ljava/lang/Boolean;
    const/16 v15, 0x20

    const/16 v17, 0x1

    :try_start_5
    aput-boolean v17, v18, v15
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    move-object v15, v7

    goto/16 :goto_3

    .line 110
    .end local v2    # "body":Ljava/lang/String;
    .end local v7    # "hideBody":Ljava/lang/Boolean;
    .end local v9    # "title":Ljava/lang/String;
    :catch_0
    move-exception v15

    move-object/from16 v17, v15

    move-object v15, v7

    :goto_a
    const/16 v19, 0x22

    const/16 v20, 0x1

    aput-boolean v20, v18, v19

    .line 111
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v17, 0x23

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    goto/16 :goto_4

    .line 119
    :cond_4
    const v17, 0x7f02005d

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    const/16 v17, 0x26

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    goto/16 :goto_5

    .line 123
    :cond_5
    sget-boolean v17, Lcom/moonpi/swiftnotes/MainActivity;->deleteActive:Z

    if-eqz v17, :cond_6

    const/16 v17, 0x28

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    goto/16 :goto_6

    .line 127
    :cond_6
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v17, 0x2a

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    goto/16 :goto_7

    .line 138
    :cond_7
    const/4 v12, 0x0

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v12, 0x2e

    const/4 v15, 0x1

    aput-boolean v15, v18, v12

    .line 139
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v12, 0x2f

    const/4 v15, 0x1

    aput-boolean v15, v18, v12

    .line 140
    const/4 v12, 0x2

    move/from16 v0, v16

    int-to-float v15, v0

    invoke-virtual {v13, v12, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v12, 0x30

    const/4 v13, 0x1

    aput-boolean v13, v18, v12

    goto/16 :goto_8

    .line 151
    :cond_8
    const v12, 0x7f0b007d

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    check-cast v12, Landroid/graphics/drawable/GradientDrawable;

    const/16 v13, 0x34

    const/4 v15, 0x1

    aput-boolean v15, v18, v13

    .line 152
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v12, 0x35

    const/4 v13, 0x1

    aput-boolean v13, v18, v12

    goto/16 :goto_9

    .line 110
    .restart local v2    # "body":Ljava/lang/String;
    .restart local v6    # "fontSize":I
    .restart local v9    # "title":Ljava/lang/String;
    :catch_1
    move-exception v15

    move-object/from16 v17, v15

    move/from16 v16, v6

    move-object v15, v7

    goto :goto_a

    .end local v6    # "fontSize":I
    .restart local v7    # "hideBody":Ljava/lang/Boolean;
    :catch_2
    move-exception v15

    move-object/from16 v17, v15

    move-object v15, v7

    goto/16 :goto_a

    .end local v7    # "hideBody":Ljava/lang/Boolean;
    :catch_3
    move-exception v17

    goto/16 :goto_a
.end method
