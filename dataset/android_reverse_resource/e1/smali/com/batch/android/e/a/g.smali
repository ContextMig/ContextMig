.class public Lcom/batch/android/e/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/e/a/g$a;,
        Lcom/batch/android/e/a/g$c;,
        Lcom/batch/android/e/a/g$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private b:Lcom/batch/android/e/a/e;

.field private c:Ljava/lang/String;

.field private d:Lcom/batch/android/e/a/g$b;

.field private e:Lcom/batch/android/e/a/g$c;

.field private f:Lcom/batch/android/e/a/f;

.field private g:Lcom/batch/android/e/a/h;

.field private h:Lcom/batch/android/e/a/c;

.field private i:Lcom/batch/android/e/a/d;

.field private j:Ljava/lang/String;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "@import sdk\\(\"([^\"]*)\"\\);"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/batch/android/e/a/g;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/batch/android/e/a/e;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/batch/android/e/a/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/batch/android/e/a/g;->k:Z

    .line 33
    iput-object p1, p0, Lcom/batch/android/e/a/g;->b:Lcom/batch/android/e/a/e;

    .line 34
    iput-object p2, p0, Lcom/batch/android/e/a/g;->c:Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Lcom/batch/android/e/a/g;->i()V

    .line 36
    return-void
.end method

.method private a(C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/e/a/a;
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {p1}, Lcom/batch/android/e/a/g$a;->a(C)Lcom/batch/android/e/a/g$a;

    move-result-object v0

    .line 109
    sget-object v1, Lcom/batch/android/e/a/g$1;->a:[I

    invoke-virtual {v0}, Lcom/batch/android/e/a/g$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 130
    :goto_0
    return-void

    .line 115
    :pswitch_0
    invoke-virtual {p0}, Lcom/batch/android/e/a/g;->b()V

    goto :goto_0

    .line 118
    :pswitch_1
    invoke-virtual {p0}, Lcom/batch/android/e/a/g;->c()V

    goto :goto_0

    .line 121
    :pswitch_2
    invoke-virtual {p0}, Lcom/batch/android/e/a/g;->d()V

    goto :goto_0

    .line 124
    :pswitch_3
    invoke-virtual {p0}, Lcom/batch/android/e/a/g;->e()V

    goto :goto_0

    .line 127
    :pswitch_4
    invoke-virtual {p0}, Lcom/batch/android/e/a/g;->f()V

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/batch/android/e/a/g;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/e/a/g;->j:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/e/a/g;->j:Ljava/lang/String;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/batch/android/e/a/g;->k:Z

    .line 103
    return-void

    .line 101
    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method private h()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    sget-object v0, Lcom/batch/android/e/a/g$b;->a:Lcom/batch/android/e/a/g$b;

    iput-object v0, p0, Lcom/batch/android/e/a/g;->d:Lcom/batch/android/e/a/g$b;

    .line 50
    sget-object v0, Lcom/batch/android/e/a/g$c;->a:Lcom/batch/android/e/a/g$c;

    iput-object v0, p0, Lcom/batch/android/e/a/g;->e:Lcom/batch/android/e/a/g$c;

    .line 51
    new-instance v0, Lcom/batch/android/e/a/d;

    invoke-direct {v0}, Lcom/batch/android/e/a/d;-><init>()V

    iput-object v0, p0, Lcom/batch/android/e/a/g;->i:Lcom/batch/android/e/a/d;

    .line 52
    iput-object v1, p0, Lcom/batch/android/e/a/g;->g:Lcom/batch/android/e/a/h;

    .line 53
    iput-object v1, p0, Lcom/batch/android/e/a/g;->f:Lcom/batch/android/e/a/f;

    .line 54
    iput-object v1, p0, Lcom/batch/android/e/a/g;->j:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/batch/android/e/a/g;->h:Lcom/batch/android/e/a/c;

    .line 56
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/batch/android/e/a/g;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 64
    :cond_0
    sget-object v0, Lcom/batch/android/e/a/g;->a:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/batch/android/e/a/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 65
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 66
    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/batch/android/e/a/g;->b:Lcom/batch/android/e/a/e;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/batch/android/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v2, v0}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_1

    :cond_1
    const-string v0, ""

    goto :goto_2

    .line 71
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/e/a/g;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method private j()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/e/a/a;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 77
    new-instance v0, Ljava/util/StringTokenizer;

    iget-object v1, p0, Lcom/batch/android/e/a/g;->c:Ljava/lang/String;

    const-string v2, ":;{}\n"

    invoke-direct {v0, v1, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 78
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 83
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 84
    const/16 v3, 0x3a

    if-eq v2, v3, :cond_0

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_0

    const/16 v3, 0x7b

    if-eq v2, v3, :cond_0

    const/16 v3, 0x7d

    if-eq v2, v3, :cond_0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 90
    :cond_0
    invoke-direct {p0, v2}, Lcom/batch/android/e/a/g;->a(C)V

    goto :goto_0

    .line 95
    :cond_1
    invoke-direct {p0, v1}, Lcom/batch/android/e/a/g;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_2
    return-void
.end method


# virtual methods
.method public a()Lcom/batch/android/e/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/e/a/a;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/batch/android/e/a/g;->h()V

    .line 41
    invoke-direct {p0}, Lcom/batch/android/e/a/g;->j()V

    .line 42
    iget-object v0, p0, Lcom/batch/android/e/a/g;->i:Lcom/batch/android/e/a/d;

    .line 43
    invoke-direct {p0}, Lcom/batch/android/e/a/g;->h()V

    .line 44
    return-object v0
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/e/a/a;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/batch/android/e/a/g;->e:Lcom/batch/android/e/a/g$c;

    sget-object v1, Lcom/batch/android/e/a/g$c;->a:Lcom/batch/android/e/a/g$c;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/batch/android/e/a/g;->g:Lcom/batch/android/e/a/h;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/e/a/g;->j:Ljava/lang/String;

    .line 138
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/batch/android/e/a/g;->g()V

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/batch/android/e/a/g;->j:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 148
    iget-object v0, p0, Lcom/batch/android/e/a/g;->d:Lcom/batch/android/e/a/g$b;

    sget-object v1, Lcom/batch/android/e/a/g$b;->a:Lcom/batch/android/e/a/g$b;

    if-eq v0, v1, :cond_2

    .line 150
    invoke-virtual {p0}, Lcom/batch/android/e/a/g;->g()V

    .line 153
    :cond_2
    sget-object v0, Lcom/batch/android/e/a/g$b;->b:Lcom/batch/android/e/a/g$b;

    iput-object v0, p0, Lcom/batch/android/e/a/g;->d:Lcom/batch/android/e/a/g$b;

    .line 155
    iget-object v0, p0, Lcom/batch/android/e/a/g;->f:Lcom/batch/android/e/a/f;

    if-eqz v0, :cond_3

    .line 158
    invoke-virtual {p0}, Lcom/batch/android/e/a/g;->g()V

    .line 161
    :cond_3
    new-instance v0, Lcom/batch/android/e/a/f;

    invoke-direct {v0}, Lcom/batch/android/e/a/f;-><init>()V

    iput-object v0, p0, Lcom/batch/android/e/a/g;->f:Lcom/batch/android/e/a/f;

    .line 162
    iget-object v0, p0, Lcom/batch/android/e/a/g;->f:Lcom/batch/android/e/a/f;

    iget-object v1, p0, Lcom/batch/android/e/a/g;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/batch/android/e/a/f;->a:Ljava/lang/String;

    .line 171
    :goto_0
    return-void

    .line 166
    :cond_4
    new-instance v0, Lcom/batch/android/e/a/h;

    invoke-direct {v0}, Lcom/batch/android/e/a/h;-><init>()V

    iput-object v0, p0, Lcom/batch/android/e/a/g;->g:Lcom/batch/android/e/a/h;

    .line 167
    iget-object v0, p0, Lcom/batch/android/e/a/g;->g:Lcom/batch/android/e/a/h;

    iget-object v1, p0, Lcom/batch/android/e/a/g;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/batch/android/e/a/h;->a:Ljava/lang/String;

    .line 169
    sget-object v0, Lcom/batch/android/e/a/g$c;->c:Lcom/batch/android/e/a/g$c;

    iput-object v0, p0, Lcom/batch/android/e/a/g;->e:Lcom/batch/android/e/a/g$c;

    goto :goto_0
.end method

.method public c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/e/a/a;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 175
    iget-object v0, p0, Lcom/batch/android/e/a/g;->e:Lcom/batch/android/e/a/g$c;

    sget-object v1, Lcom/batch/android/e/a/g$c;->d:Lcom/batch/android/e/a/g$c;

    if-ne v0, v1, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/batch/android/e/a/g;->e()V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/batch/android/e/a/g;->e:Lcom/batch/android/e/a/g$c;

    sget-object v1, Lcom/batch/android/e/a/g$c;->c:Lcom/batch/android/e/a/g$c;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/batch/android/e/a/g;->d:Lcom/batch/android/e/a/g$b;

    sget-object v1, Lcom/batch/android/e/a/g$b;->b:Lcom/batch/android/e/a/g$b;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/batch/android/e/a/g;->e:Lcom/batch/android/e/a/g$c;

    sget-object v1, Lcom/batch/android/e/a/g$c;->a:Lcom/batch/android/e/a/g$c;

    if-eq v0, v1, :cond_1

    .line 184
    invoke-virtual {p0}, Lcom/batch/android/e/a/g;->g()V

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/batch/android/e/a/g;->d:Lcom/batch/android/e/a/g$b;

    sget-object v1, Lcom/batch/android/e/a/g$b;->b:Lcom/batch/android/e/a/g$b;

    if-ne v0, v1, :cond_6

    .line 189
    iget-object v0, p0, Lcom/batch/android/e/a/g;->g:Lcom/batch/android/e/a/h;

    if-eqz v0, :cond_3

    .line 191
    iget-object v0, p0, Lcom/batch/android/e/a/g;->f:Lcom/batch/android/e/a/f;

    if-nez v0, :cond_2

    .line 193
    invoke-virtual {p0}, Lcom/batch/android/e/a/g;->g()V

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/batch/android/e/a/g;->f:Lcom/batch/android/e/a/f;

    iget-object v0, v0, Lcom/batch/android/e/a/f;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/batch/android/e/a/g;->g:Lcom/batch/android/e/a/h;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iput-object v2, p0, Lcom/batch/android/e/a/g;->g:Lcom/batch/android/e/a/h;

    .line 219
    :goto_0
    sget-object v0, Lcom/batch/android/e/a/g$c;->a:Lcom/batch/android/e/a/g$c;

    iput-object v0, p0, Lcom/batch/android/e/a/g;->e:Lcom/batch/android/e/a/g$c;

    .line 220
    return-void

    .line 200
    :cond_3
    iget-object v0, p0, Lcom/batch/android/e/a/g;->i:Lcom/batch/android/e/a/d;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/batch/android/e/a/g;->f:Lcom/batch/android/e/a/f;

    if-nez v0, :cond_5

    .line 202
    :cond_4
    invoke-virtual {p0}, Lcom/batch/android/e/a/g;->g()V

    .line 204
    :cond_5
    iget-object v0, p0, Lcom/batch/android/e/a/g;->i:Lcom/batch/android/e/a/d;

    iget-object v0, v0, Lcom/batch/android/e/a/d;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/batch/android/e/a/g;->f:Lcom/batch/android/e/a/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iput-object v2, p0, Lcom/batch/android/e/a/g;->f:Lcom/batch/android/e/a/f;

    .line 206
    sget-object v0, Lcom/batch/android/e/a/g$b;->a:Lcom/batch/android/e/a/g$b;

    iput-object v0, p0, Lcom/batch/android/e/a/g;->d:Lcom/batch/android/e/a/g$b;

    goto :goto_0

    .line 211
    :cond_6
    iget-object v0, p0, Lcom/batch/android/e/a/g;->i:Lcom/batch/android/e/a/d;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/batch/android/e/a/g;->g:Lcom/batch/android/e/a/h;

    if-nez v0, :cond_8

    .line 213
    :cond_7
    invoke-virtual {p0}, Lcom/batch/android/e/a/g;->g()V

    .line 215
    :cond_8
    iget-object v0, p0, Lcom/batch/android/e/a/g;->i:Lcom/batch/android/e/a/d;

    iget-object v0, v0, Lcom/batch/android/e/a/d;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/batch/android/e/a/g;->g:Lcom/batch/android/e/a/h;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iput-object v2, p0, Lcom/batch/android/e/a/g;->g:Lcom/batch/android/e/a/h;

    goto :goto_0
.end method

.method public d()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/e/a/a;
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/batch/android/e/a/g;->d:Lcom/batch/android/e/a/g$b;

    sget-object v1, Lcom/batch/android/e/a/g$b;->a:Lcom/batch/android/e/a/g$b;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/batch/android/e/a/g;->e:Lcom/batch/android/e/a/g$c;

    sget-object v1, Lcom/batch/android/e/a/g$c;->a:Lcom/batch/android/e/a/g$c;

    if-ne v0, v1, :cond_0

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/e/a/g;->k:Z

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/batch/android/e/a/g;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/e/a/g;->j:Ljava/lang/String;

    .line 253
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/batch/android/e/a/g;->e:Lcom/batch/android/e/a/g$c;

    sget-object v1, Lcom/batch/android/e/a/g$c;->c:Lcom/batch/android/e/a/g$c;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/batch/android/e/a/g;->g:Lcom/batch/android/e/a/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/batch/android/e/a/g;->h:Lcom/batch/android/e/a/c;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/batch/android/e/a/g;->j:Ljava/lang/String;

    .line 235
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    :cond_1
    invoke-virtual {p0}, Lcom/batch/android/e/a/g;->g()V

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/batch/android/e/a/g;->j:Ljava/lang/String;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 243
    new-instance v0, Lcom/batch/android/e/a/i;

    invoke-direct {v0}, Lcom/batch/android/e/a/i;-><init>()V

    iput-object v0, p0, Lcom/batch/android/e/a/g;->h:Lcom/batch/android/e/a/c;

    .line 250
    :goto_1
    iget-object v0, p0, Lcom/batch/android/e/a/g;->h:Lcom/batch/android/e/a/c;

    iget-object v1, p0, Lcom/batch/android/e/a/g;->j:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/batch/android/e/a/c;->a:Ljava/lang/String;

    .line 252
    sget-object v0, Lcom/batch/android/e/a/g$c;->d:Lcom/batch/android/e/a/g$c;

    iput-object v0, p0, Lcom/batch/android/e/a/g;->e:Lcom/batch/android/e/a/g$c;

    goto :goto_0

    .line 247
    :cond_3
    new-instance v0, Lcom/batch/android/e/a/c;

    invoke-direct {v0}, Lcom/batch/android/e/a/c;-><init>()V

    iput-object v0, p0, Lcom/batch/android/e/a/g;->h:Lcom/batch/android/e/a/c;

    goto :goto_1
.end method

.method public e()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/e/a/a;
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/batch/android/e/a/g;->e:Lcom/batch/android/e/a/g$c;

    sget-object v1, Lcom/batch/android/e/a/g$c;->d:Lcom/batch/android/e/a/g$c;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/batch/android/e/a/g;->j:Ljava/lang/String;

    .line 258
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/e/a/g;->h:Lcom/batch/android/e/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/e/a/g;->g:Lcom/batch/android/e/a/h;

    if-nez v0, :cond_1

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/batch/android/e/a/g;->g()V

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/batch/android/e/a/g;->h:Lcom/batch/android/e/a/c;

    iget-object v1, p0, Lcom/batch/android/e/a/g;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/batch/android/e/a/c;->b:Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lcom/batch/android/e/a/g;->g:Lcom/batch/android/e/a/h;

    iget-object v0, v0, Lcom/batch/android/e/a/h;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/batch/android/e/a/g;->h:Lcom/batch/android/e/a/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/e/a/g;->h:Lcom/batch/android/e/a/c;

    .line 269
    sget-object v0, Lcom/batch/android/e/a/g$c;->c:Lcom/batch/android/e/a/g$c;

    iput-object v0, p0, Lcom/batch/android/e/a/g;->e:Lcom/batch/android/e/a/g$c;

    .line 270
    return-void
.end method

.method public f()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/e/a/a;
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/batch/android/e/a/g;->e:Lcom/batch/android/e/a/g$c;

    sget-object v1, Lcom/batch/android/e/a/g$c;->d:Lcom/batch/android/e/a/g$c;

    if-ne v0, v1, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/batch/android/e/a/g;->e()V

    .line 278
    :cond_0
    return-void
.end method

.method public g()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/e/a/a;
        }
    .end annotation

    .prologue
    .line 282
    new-instance v0, Lcom/batch/android/e/a/a;

    const-string v1, "Internal parsing error"

    invoke-direct {v0, v1}, Lcom/batch/android/e/a/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method
