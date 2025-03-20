.class final Lcom/batch/android/e/d/c$a;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/e/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field A:F

.field B:I

.field C:Z

.field D:Z

.field E:Z

.field F:Z

.field G:Landroid/content/res/ColorStateList;

.field H:Landroid/graphics/PorterDuff$Mode;

.field I:[I

.field J:[I

.field K:[I

.field L:[I

.field M:[I

.field N:[I

.field O:[I

.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Lcom/batch/android/e/d/c$b;

.field public f:Landroid/content/res/ColorStateList;

.field public g:Landroid/content/res/ColorStateList;

.field public h:[I

.field public i:[I

.field public j:[F

.field public k:[F

.field public l:I

.field public m:F

.field public n:F

.field public o:F

.field public p:[F

.field public q:Landroid/graphics/Rect;

.field public r:I

.field public s:I

.field public t:F

.field public u:F

.field public v:I

.field public w:I

.field public x:Z

.field y:F

.field z:F


# direct methods
.method public constructor <init>(Lcom/batch/android/e/d/c$a;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 1127
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 1075
    iput v1, p0, Lcom/batch/android/e/d/c$a;->b:I

    .line 1076
    iput v1, p0, Lcom/batch/android/e/d/c$a;->c:I

    .line 1077
    iput v1, p0, Lcom/batch/android/e/d/c$a;->d:I

    .line 1085
    iput v2, p0, Lcom/batch/android/e/d/c$a;->l:I

    .line 1086
    iput v0, p0, Lcom/batch/android/e/d/c$a;->m:F

    .line 1087
    iput v0, p0, Lcom/batch/android/e/d/c$a;->n:F

    .line 1088
    iput v0, p0, Lcom/batch/android/e/d/c$a;->o:F

    .line 1089
    iput-object v4, p0, Lcom/batch/android/e/d/c$a;->p:[F

    .line 1090
    iput-object v4, p0, Lcom/batch/android/e/d/c$a;->q:Landroid/graphics/Rect;

    .line 1091
    iput v2, p0, Lcom/batch/android/e/d/c$a;->r:I

    .line 1092
    iput v2, p0, Lcom/batch/android/e/d/c$a;->s:I

    .line 1093
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/batch/android/e/d/c$a;->t:F

    .line 1094
    const/high16 v0, 0x41100000    # 9.0f

    iput v0, p0, Lcom/batch/android/e/d/c$a;->u:F

    .line 1095
    iput v2, p0, Lcom/batch/android/e/d/c$a;->v:I

    .line 1096
    iput v2, p0, Lcom/batch/android/e/d/c$a;->w:I

    .line 1097
    iput-boolean v1, p0, Lcom/batch/android/e/d/c$a;->x:Z

    .line 1100
    iput v3, p0, Lcom/batch/android/e/d/c$a;->y:F

    .line 1101
    iput v3, p0, Lcom/batch/android/e/d/c$a;->z:F

    .line 1102
    iput v3, p0, Lcom/batch/android/e/d/c$a;->A:F

    .line 1103
    iput v1, p0, Lcom/batch/android/e/d/c$a;->B:I

    .line 1104
    iput-boolean v1, p0, Lcom/batch/android/e/d/c$a;->C:Z

    .line 1105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/e/d/c$a;->D:Z

    .line 1110
    iput-object v4, p0, Lcom/batch/android/e/d/c$a;->G:Landroid/content/res/ColorStateList;

    .line 1111
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/batch/android/e/d/c$a;->H:Landroid/graphics/PorterDuff$Mode;

    .line 1128
    iget v0, p1, Lcom/batch/android/e/d/c$a;->a:I

    iput v0, p0, Lcom/batch/android/e/d/c$a;->a:I

    .line 1129
    iget v0, p1, Lcom/batch/android/e/d/c$a;->b:I

    iput v0, p0, Lcom/batch/android/e/d/c$a;->b:I

    .line 1130
    iget v0, p1, Lcom/batch/android/e/d/c$a;->c:I

    iput v0, p0, Lcom/batch/android/e/d/c$a;->c:I

    .line 1131
    iget v0, p1, Lcom/batch/android/e/d/c$a;->d:I

    iput v0, p0, Lcom/batch/android/e/d/c$a;->d:I

    .line 1132
    iget-object v0, p1, Lcom/batch/android/e/d/c$a;->e:Lcom/batch/android/e/d/c$b;

    iput-object v0, p0, Lcom/batch/android/e/d/c$a;->e:Lcom/batch/android/e/d/c$b;

    .line 1133
    iget-object v0, p1, Lcom/batch/android/e/d/c$a;->f:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/batch/android/e/d/c$a;->f:Landroid/content/res/ColorStateList;

    .line 1134
    iget-object v0, p1, Lcom/batch/android/e/d/c$a;->h:[I

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p1, Lcom/batch/android/e/d/c$a;->h:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/batch/android/e/d/c$a;->h:[I

    .line 1137
    :cond_0
    iget-object v0, p1, Lcom/batch/android/e/d/c$a;->k:[F

    if-eqz v0, :cond_1

    .line 1138
    iget-object v0, p1, Lcom/batch/android/e/d/c$a;->k:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/batch/android/e/d/c$a;->k:[F

    .line 1140
    :cond_1
    iget-object v0, p1, Lcom/batch/android/e/d/c$a;->g:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/batch/android/e/d/c$a;->g:Landroid/content/res/ColorStateList;

    .line 1141
    iget v0, p1, Lcom/batch/android/e/d/c$a;->l:I

    iput v0, p0, Lcom/batch/android/e/d/c$a;->l:I

    .line 1142
    iget v0, p1, Lcom/batch/android/e/d/c$a;->m:F

    iput v0, p0, Lcom/batch/android/e/d/c$a;->m:F

    .line 1143
    iget v0, p1, Lcom/batch/android/e/d/c$a;->n:F

    iput v0, p0, Lcom/batch/android/e/d/c$a;->n:F

    .line 1144
    iget v0, p1, Lcom/batch/android/e/d/c$a;->o:F

    iput v0, p0, Lcom/batch/android/e/d/c$a;->o:F

    .line 1145
    iget-object v0, p1, Lcom/batch/android/e/d/c$a;->p:[F

    if-eqz v0, :cond_2

    .line 1146
    iget-object v0, p1, Lcom/batch/android/e/d/c$a;->p:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/batch/android/e/d/c$a;->p:[F

    .line 1148
    :cond_2
    iget-object v0, p1, Lcom/batch/android/e/d/c$a;->q:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    .line 1149
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/batch/android/e/d/c$a;->q:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/batch/android/e/d/c$a;->q:Landroid/graphics/Rect;

    .line 1151
    :cond_3
    iget v0, p1, Lcom/batch/android/e/d/c$a;->r:I

    iput v0, p0, Lcom/batch/android/e/d/c$a;->r:I

    .line 1152
    iget v0, p1, Lcom/batch/android/e/d/c$a;->s:I

    iput v0, p0, Lcom/batch/android/e/d/c$a;->s:I

    .line 1153
    iget v0, p1, Lcom/batch/android/e/d/c$a;->t:F

    iput v0, p0, Lcom/batch/android/e/d/c$a;->t:F

    .line 1154
    iget v0, p1, Lcom/batch/android/e/d/c$a;->u:F

    iput v0, p0, Lcom/batch/android/e/d/c$a;->u:F

    .line 1155
    iget v0, p1, Lcom/batch/android/e/d/c$a;->v:I

    iput v0, p0, Lcom/batch/android/e/d/c$a;->v:I

    .line 1156
    iget v0, p1, Lcom/batch/android/e/d/c$a;->w:I

    iput v0, p0, Lcom/batch/android/e/d/c$a;->w:I

    .line 1157
    iget-boolean v0, p1, Lcom/batch/android/e/d/c$a;->x:Z

    iput-boolean v0, p0, Lcom/batch/android/e/d/c$a;->x:Z

    .line 1158
    iget v0, p1, Lcom/batch/android/e/d/c$a;->y:F

    iput v0, p0, Lcom/batch/android/e/d/c$a;->y:F

    .line 1159
    iget v0, p1, Lcom/batch/android/e/d/c$a;->z:F

    iput v0, p0, Lcom/batch/android/e/d/c$a;->z:F

    .line 1160
    iget v0, p1, Lcom/batch/android/e/d/c$a;->A:F

    iput v0, p0, Lcom/batch/android/e/d/c$a;->A:F

    .line 1161
    iget v0, p1, Lcom/batch/android/e/d/c$a;->B:I

    iput v0, p0, Lcom/batch/android/e/d/c$a;->B:I

    .line 1162
    iget-boolean v0, p1, Lcom/batch/android/e/d/c$a;->C:Z

    iput-boolean v0, p0, Lcom/batch/android/e/d/c$a;->C:Z

    .line 1163
    iget-boolean v0, p1, Lcom/batch/android/e/d/c$a;->D:Z

    iput-boolean v0, p0, Lcom/batch/android/e/d/c$a;->D:Z

    .line 1164
    iget-boolean v0, p1, Lcom/batch/android/e/d/c$a;->E:Z

    iput-boolean v0, p0, Lcom/batch/android/e/d/c$a;->E:Z

    .line 1165
    iget-boolean v0, p1, Lcom/batch/android/e/d/c$a;->F:Z

    iput-boolean v0, p0, Lcom/batch/android/e/d/c$a;->F:Z

    .line 1166
    iget-object v0, p1, Lcom/batch/android/e/d/c$a;->G:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/batch/android/e/d/c$a;->G:Landroid/content/res/ColorStateList;

    .line 1167
    iget-object v0, p1, Lcom/batch/android/e/d/c$a;->H:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/batch/android/e/d/c$a;->H:Landroid/graphics/PorterDuff$Mode;

    .line 1168
    iget-object v0, p1, Lcom/batch/android/e/d/c$a;->I:[I

    iput-object v0, p0, Lcom/batch/android/e/d/c$a;->I:[I

    .line 1169
    iget-object v0, p1, Lcom/batch/android/e/d/c$a;->J:[I

    iput-object v0, p0, Lcom/batch/android/e/d/c$a;->J:[I

    .line 1170
    iget-object v0, p1, Lcom/batch/android/e/d/c$a;->K:[I

    iput-object v0, p0, Lcom/batch/android/e/d/c$a;->K:[I

    .line 1171
    iget-object v0, p1, Lcom/batch/android/e/d/c$a;->L:[I

    iput-object v0, p0, Lcom/batch/android/e/d/c$a;->L:[I

    .line 1172
    iget-object v0, p1, Lcom/batch/android/e/d/c$a;->M:[I

    iput-object v0, p0, Lcom/batch/android/e/d/c$a;->M:[I

    .line 1173
    iget-object v0, p1, Lcom/batch/android/e/d/c$a;->N:[I

    iput-object v0, p0, Lcom/batch/android/e/d/c$a;->N:[I

    .line 1174
    iget-object v0, p1, Lcom/batch/android/e/d/c$a;->O:[I

    iput-object v0, p0, Lcom/batch/android/e/d/c$a;->O:[I

    .line 1175
    return-void
.end method

.method public constructor <init>(Lcom/batch/android/e/d/c$b;[I[F)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 1121
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 1075
    iput v1, p0, Lcom/batch/android/e/d/c$a;->b:I

    .line 1076
    iput v1, p0, Lcom/batch/android/e/d/c$a;->c:I

    .line 1077
    iput v1, p0, Lcom/batch/android/e/d/c$a;->d:I

    .line 1085
    iput v2, p0, Lcom/batch/android/e/d/c$a;->l:I

    .line 1086
    iput v0, p0, Lcom/batch/android/e/d/c$a;->m:F

    .line 1087
    iput v0, p0, Lcom/batch/android/e/d/c$a;->n:F

    .line 1088
    iput v0, p0, Lcom/batch/android/e/d/c$a;->o:F

    .line 1089
    iput-object v4, p0, Lcom/batch/android/e/d/c$a;->p:[F

    .line 1090
    iput-object v4, p0, Lcom/batch/android/e/d/c$a;->q:Landroid/graphics/Rect;

    .line 1091
    iput v2, p0, Lcom/batch/android/e/d/c$a;->r:I

    .line 1092
    iput v2, p0, Lcom/batch/android/e/d/c$a;->s:I

    .line 1093
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/batch/android/e/d/c$a;->t:F

    .line 1094
    const/high16 v0, 0x41100000    # 9.0f

    iput v0, p0, Lcom/batch/android/e/d/c$a;->u:F

    .line 1095
    iput v2, p0, Lcom/batch/android/e/d/c$a;->v:I

    .line 1096
    iput v2, p0, Lcom/batch/android/e/d/c$a;->w:I

    .line 1097
    iput-boolean v1, p0, Lcom/batch/android/e/d/c$a;->x:Z

    .line 1100
    iput v3, p0, Lcom/batch/android/e/d/c$a;->y:F

    .line 1101
    iput v3, p0, Lcom/batch/android/e/d/c$a;->z:F

    .line 1102
    iput v3, p0, Lcom/batch/android/e/d/c$a;->A:F

    .line 1103
    iput v1, p0, Lcom/batch/android/e/d/c$a;->B:I

    .line 1104
    iput-boolean v1, p0, Lcom/batch/android/e/d/c$a;->C:Z

    .line 1105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/e/d/c$a;->D:Z

    .line 1110
    iput-object v4, p0, Lcom/batch/android/e/d/c$a;->G:Landroid/content/res/ColorStateList;

    .line 1111
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/batch/android/e/d/c$a;->H:Landroid/graphics/PorterDuff$Mode;

    .line 1122
    iput-object p1, p0, Lcom/batch/android/e/d/c$a;->e:Lcom/batch/android/e/d/c$b;

    .line 1123
    invoke-virtual {p0, p2}, Lcom/batch/android/e/d/c$a;->a([I)V

    .line 1124
    invoke-virtual {p0, p3}, Lcom/batch/android/e/d/c$a;->a([F)V

    .line 1125
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1240
    iput-boolean v1, p0, Lcom/batch/android/e/d/c$a;->E:Z

    .line 1241
    iput-boolean v1, p0, Lcom/batch/android/e/d/c$a;->F:Z

    .line 1243
    iget-object v0, p0, Lcom/batch/android/e/d/c$a;->h:[I

    if-eqz v0, :cond_2

    move v0, v1

    .line 1244
    :goto_0
    iget-object v3, p0, Lcom/batch/android/e/d/c$a;->h:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 1245
    iget-object v3, p0, Lcom/batch/android/e/d/c$a;->h:[I

    aget v3, v3, v0

    invoke-static {v3}, Lcom/batch/android/e/d/c;->d(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1262
    :cond_0
    :goto_1
    return-void

    .line 1244
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1252
    :cond_2
    iget-object v0, p0, Lcom/batch/android/e/d/c$a;->h:[I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/batch/android/e/d/c$a;->f:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 1257
    :cond_3
    iput-boolean v2, p0, Lcom/batch/android/e/d/c$a;->F:Z

    .line 1259
    iget v0, p0, Lcom/batch/android/e/d/c$a;->b:I

    if-nez v0, :cond_4

    iget v0, p0, Lcom/batch/android/e/d/c$a;->o:F

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/batch/android/e/d/c$a;->p:[F

    if-nez v0, :cond_4

    move v1, v2

    :cond_4
    iput-boolean v1, p0, Lcom/batch/android/e/d/c$a;->E:Z

    goto :goto_1
.end method

.method static synthetic a(Lcom/batch/android/e/d/c$a;)V
    .locals 0

    .prologue
    .line 1073
    invoke-direct {p0}, Lcom/batch/android/e/d/c$a;->a()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1273
    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    .line 1276
    :cond_0
    iput p1, p0, Lcom/batch/android/e/d/c$a;->o:F

    .line 1277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/e/d/c$a;->p:[F

    .line 1278
    return-void
.end method

.method public a(FF)V
    .locals 0

    .prologue
    .line 1218
    iput p1, p0, Lcom/batch/android/e/d/c$a;->y:F

    .line 1219
    iput p2, p0, Lcom/batch/android/e/d/c$a;->z:F

    .line 1220
    return-void
.end method

.method public a(FI)V
    .locals 0

    .prologue
    .line 1293
    iput p1, p0, Lcom/batch/android/e/d/c$a;->A:F

    .line 1294
    iput p2, p0, Lcom/batch/android/e/d/c$a;->B:I

    .line 1295
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 1209
    iput p1, p0, Lcom/batch/android/e/d/c$a;->b:I

    .line 1210
    invoke-direct {p0}, Lcom/batch/android/e/d/c$a;->a()V

    .line 1211
    return-void
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 1288
    iput p1, p0, Lcom/batch/android/e/d/c$a;->r:I

    .line 1289
    iput p2, p0, Lcom/batch/android/e/d/c$a;->s:I

    .line 1290
    return-void
.end method

.method public a(ILandroid/content/res/ColorStateList;FF)V
    .locals 0

    .prologue
    .line 1265
    iput p1, p0, Lcom/batch/android/e/d/c$a;->l:I

    .line 1266
    iput-object p2, p0, Lcom/batch/android/e/d/c$a;->g:Landroid/content/res/ColorStateList;

    .line 1267
    iput p3, p0, Lcom/batch/android/e/d/c$a;->m:F

    .line 1268
    iput p4, p0, Lcom/batch/android/e/d/c$a;->n:F

    .line 1269
    invoke-direct {p0}, Lcom/batch/android/e/d/c$a;->a()V

    .line 1270
    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 1234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/e/d/c$a;->h:[I

    .line 1235
    iput-object p1, p0, Lcom/batch/android/e/d/c$a;->f:Landroid/content/res/ColorStateList;

    .line 1236
    invoke-direct {p0}, Lcom/batch/android/e/d/c$a;->a()V

    .line 1237
    return-void
.end method

.method public a([F)V
    .locals 0

    .prologue
    .line 1229
    iput-object p1, p0, Lcom/batch/android/e/d/c$a;->k:[F

    .line 1230
    invoke-direct {p0}, Lcom/batch/android/e/d/c$a;->a()V

    .line 1231
    return-void
.end method

.method public a([I)V
    .locals 1

    .prologue
    .line 1223
    iput-object p1, p0, Lcom/batch/android/e/d/c$a;->h:[I

    .line 1224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/e/d/c$a;->f:Landroid/content/res/ColorStateList;

    .line 1225
    invoke-direct {p0}, Lcom/batch/android/e/d/c$a;->a()V

    .line 1226
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 1214
    iput p1, p0, Lcom/batch/android/e/d/c$a;->c:I

    .line 1215
    return-void
.end method

.method public b([F)V
    .locals 1

    .prologue
    .line 1281
    iput-object p1, p0, Lcom/batch/android/e/d/c$a;->p:[F

    .line 1282
    if-nez p1, :cond_0

    .line 1283
    const/4 v0, 0x0

    iput v0, p0, Lcom/batch/android/e/d/c$a;->o:F

    .line 1285
    :cond_0
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/batch/android/e/d/c$a;->I:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/e/d/c$a;->J:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/e/d/c$a;->K:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/e/d/c$a;->L:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/e/d/c$a;->M:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/e/d/c$a;->N:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/e/d/c$a;->O:[I

    if-nez v0, :cond_0

    .line 1183
    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1179
    :goto_0
    return v0

    .line 1183
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1198
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    .line 1199
    iget v0, p0, Lcom/batch/android/e/d/c$a;->a:I

    .line 1202
    :goto_0
    return v0

    :cond_0
    iget v2, p0, Lcom/batch/android/e/d/c$a;->a:I

    iget-object v0, p0, Lcom/batch/android/e/d/c$a;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/batch/android/e/d/c$a;->g:Landroid/content/res/ColorStateList;

    .line 1203
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v0

    :goto_1
    or-int/2addr v2, v0

    iget-object v0, p0, Lcom/batch/android/e/d/c$a;->f:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/batch/android/e/d/c$a;->f:Landroid/content/res/ColorStateList;

    .line 1204
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v0

    :goto_2
    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/batch/android/e/d/c$a;->G:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/batch/android/e/d/c$a;->G:Landroid/content/res/ColorStateList;

    .line 1205
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v1

    :cond_1
    or-int/2addr v0, v1

    .line 1202
    goto :goto_0

    :cond_2
    move v0, v1

    .line 1203
    goto :goto_1

    :cond_3
    move v0, v1

    .line 1204
    goto :goto_2
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1188
    new-instance v0, Lcom/batch/android/e/d/c;

    invoke-direct {v0, p0, v1, v1}, Lcom/batch/android/e/d/c;-><init>(Lcom/batch/android/e/d/c$a;Landroid/content/res/Resources;Lcom/batch/android/e/d/c$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 1193
    new-instance v0, Lcom/batch/android/e/d/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/batch/android/e/d/c;-><init>(Lcom/batch/android/e/d/c$a;Landroid/content/res/Resources;Lcom/batch/android/e/d/c$1;)V

    return-object v0
.end method
