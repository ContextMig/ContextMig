.class final Lhirondelle/date4j/ToStringUtil;
.super Ljava/lang/Object;
.source "ToStringUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhirondelle/date4j/ToStringUtil$1;,
        Lhirondelle/date4j/ToStringUtil$Pong;,
        Lhirondelle/date4j/ToStringUtil$Ping;
    }
.end annotation


# static fields
.field private static HIDDEN_PASSWORD_VALUE:Ljava/lang/String; = null

.field private static final NEW_LINE:Ljava/lang/String;

.field private static PASSWORD_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final fAVOID_CIRCULAR_REFERENCES:Ljava/lang/String; = "[circular reference]"

.field private static final fCLONE:Ljava/lang/String; = "clone"

.field private static final fGET:Ljava/lang/String; = "get"

.field private static final fGET_CLASS:Ljava/lang/String; = "getClass"

.field private static final fHASH_CODE:Ljava/lang/String; = "hashCode"

.field private static final fINDENT:Ljava/lang/String; = ""

.field private static final fLogger:Ljava/util/logging/Logger;

.field private static final fNO_ARGS:[Ljava/lang/Object;

.field private static final fNO_PARAMS:[Ljava/lang/Class;

.field private static final fTO_STRING:Ljava/lang/String; = "toString"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 145
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lhirondelle/date4j/ToStringUtil;->fNO_ARGS:[Ljava/lang/Object;

    .line 146
    new-array v0, v1, [Ljava/lang/Class;

    sput-object v0, Lhirondelle/date4j/ToStringUtil;->fNO_PARAMS:[Ljava/lang/Class;

    .line 155
    const-class v0, Lhirondelle/date4j/ToStringUtil;

    invoke-static {v0}, Lhirondelle/date4j/Util;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lhirondelle/date4j/ToStringUtil;->fLogger:Ljava/util/logging/Logger;

    .line 156
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhirondelle/date4j/ToStringUtil;->NEW_LINE:Ljava/lang/String;

    .line 158
    const-string v0, "password"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lhirondelle/date4j/ToStringUtil;->PASSWORD_PATTERN:Ljava/util/regex/Pattern;

    .line 159
    const-string v0, "****"

    sput-object v0, Lhirondelle/date4j/ToStringUtil;->HIDDEN_PASSWORD_VALUE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    return-void
.end method

.method private static addEndLine(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p0, "aResult"    # Ljava/lang/StringBuilder;

    .prologue
    .line 173
    const-string v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    sget-object v0, Lhirondelle/date4j/ToStringUtil;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    return-void
.end method

.method private static addLineForGetXXXMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3
    .param p0, "aObject"    # Ljava/lang/Object;
    .param p1, "aMethod"    # Ljava/lang/reflect/Method;
    .param p2, "aResult"    # Ljava/lang/StringBuilder;
    .param p3, "aCircularRefClass"    # Ljava/lang/Class;
    .param p4, "aCircularRefMethodName"    # Ljava/lang/String;

    .prologue
    .line 208
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-static {p1}, Lhirondelle/date4j/ToStringUtil;->getMethodNameMinusGet(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string v2, ": "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-static {p0, p1}, Lhirondelle/date4j/ToStringUtil;->getMethodReturnValue(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v1

    .line 212
    .local v1, "returnValue":Ljava/lang/Object;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    invoke-static {v1}, Lhirondelle/date4j/Util;->getArrayAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_0
    :goto_0
    sget-object v2, Lhirondelle/date4j/ToStringUtil;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    return-void

    .line 216
    :cond_1
    if-nez p3, :cond_2

    .line 217
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 220
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne p3, v2, :cond_0

    .line 221
    invoke-static {p3, p4}, Lhirondelle/date4j/ToStringUtil;->getMethodFromName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 222
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-static {v0, p3}, Lhirondelle/date4j/ToStringUtil;->isContributingMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 223
    invoke-static {v1, v0}, Lhirondelle/date4j/ToStringUtil;->getMethodReturnValue(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v1

    .line 224
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 227
    :cond_3
    const-string v2, "[circular reference]"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static addStartLine(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p0, "aObject"    # Ljava/lang/Object;
    .param p1, "aResult"    # Ljava/lang/StringBuilder;

    .prologue
    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v0, " {"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    sget-object v0, Lhirondelle/date4j/ToStringUtil;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    return-void
.end method

.method private static dontShowPasswords(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 4
    .param p0, "aReturnValue"    # Ljava/lang/Object;
    .param p1, "aMethod"    # Ljava/lang/reflect/Method;

    .prologue
    .line 290
    move-object v1, p0

    .line 291
    .local v1, "result":Ljava/lang/Object;
    sget-object v2, Lhirondelle/date4j/ToStringUtil;->PASSWORD_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 292
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    sget-object v1, Lhirondelle/date4j/ToStringUtil;->HIDDEN_PASSWORD_VALUE:Ljava/lang/String;

    .line 295
    .end local v1    # "result":Ljava/lang/Object;
    :cond_0
    return-object v1
.end method

.method private static getMethodFromName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 3
    .param p0, "aSpecialClass"    # Ljava/lang/Class;
    .param p1, "aMethodName"    # Ljava/lang/String;

    .prologue
    .line 260
    const/4 v1, 0x0

    .line 262
    .local v1, "result":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lhirondelle/date4j/ToStringUtil;->fNO_PARAMS:[Ljava/lang/Class;

    invoke-virtual {p0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 267
    :goto_0
    return-object v1

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    invoke-static {p0, p1}, Lhirondelle/date4j/ToStringUtil;->vomit(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getMethodNameMinusGet(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 2
    .param p0, "aMethod"    # Ljava/lang/reflect/Method;

    .prologue
    .line 236
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "result":Ljava/lang/String;
    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    const-string v1, "get"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    :cond_0
    return-object v0
.end method

.method private static getMethodReturnValue(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 3
    .param p0, "aObject"    # Ljava/lang/Object;
    .param p1, "aMethod"    # Ljava/lang/reflect/Method;

    .prologue
    .line 245
    const/4 v1, 0x0

    .line 247
    .local v1, "result":Ljava/lang/Object;
    :try_start_0
    sget-object v2, Lhirondelle/date4j/ToStringUtil;->fNO_ARGS:[Ljava/lang/Object;

    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 255
    .end local v1    # "result":Ljava/lang/Object;
    :goto_0
    invoke-static {v1, p1}, Lhirondelle/date4j/ToStringUtil;->dontShowPasswords(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v1

    .line 256
    .restart local v1    # "result":Ljava/lang/Object;
    return-object v1

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    invoke-static {p0, p1}, Lhirondelle/date4j/ToStringUtil;->vomit(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    goto :goto_0

    .line 252
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 253
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {p0, p1}, Lhirondelle/date4j/ToStringUtil;->vomit(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    goto :goto_0
.end method

.method static getText(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "aObject"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-static {p0, v0, v0}, Lhirondelle/date4j/ToStringUtil;->getTextAvoidCyclicRefs(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getTextAvoidCyclicRefs(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "aObject"    # Ljava/lang/Object;
    .param p1, "aSpecialClass"    # Ljava/lang/Class;
    .param p2, "aMethodName"    # Ljava/lang/String;

    .prologue
    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v5, "result":Ljava/lang/StringBuilder;
    invoke-static {p0, v5}, Lhirondelle/date4j/ToStringUtil;->addStartLine(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 124
    .local v4, "methods":[Ljava/lang/reflect/Method;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 125
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v3, v6}, Lhirondelle/date4j/ToStringUtil;->isContributingMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 126
    invoke-static {p0, v3, v5, p1, p2}, Lhirondelle/date4j/ToStringUtil;->addLineForGetXXXMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/Class;Ljava/lang/String;)V

    .line 124
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_1
    invoke-static {v5}, Lhirondelle/date4j/ToStringUtil;->addEndLine(Ljava/lang/StringBuilder;)V

    .line 131
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static isContributingMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z
    .locals 9
    .param p0, "aMethod"    # Ljava/lang/reflect/Method;
    .param p1, "aNativeClass"    # Ljava/lang/Class;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 183
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    .line 184
    .local v3, "isPublic":Z
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_1

    move v0, v5

    .line 185
    .local v0, "hasNoArguments":Z
    :goto_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v7, v8, :cond_2

    move v1, v5

    .line 186
    .local v1, "hasReturnValue":Z
    :goto_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    if-ne v7, p1, :cond_3

    move v4, v5

    .line 187
    .local v4, "returnsNativeObject":Z
    :goto_2
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "clone"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getClass"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "hashCode"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "toString"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_0
    move v2, v5

    .line 193
    .local v2, "isMethodOfObjectClass":Z
    :goto_3
    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    if-nez v2, :cond_5

    if-nez v4, :cond_5

    :goto_4
    return v5

    .end local v0    # "hasNoArguments":Z
    .end local v1    # "hasReturnValue":Z
    .end local v2    # "isMethodOfObjectClass":Z
    .end local v4    # "returnsNativeObject":Z
    :cond_1
    move v0, v6

    .line 184
    goto :goto_0

    .restart local v0    # "hasNoArguments":Z
    :cond_2
    move v1, v6

    .line 185
    goto :goto_1

    .restart local v1    # "hasReturnValue":Z
    :cond_3
    move v4, v6

    .line 186
    goto :goto_2

    .restart local v4    # "returnsNativeObject":Z
    :cond_4
    move v2, v6

    .line 187
    goto :goto_3

    .restart local v2    # "isMethodOfObjectClass":Z
    :cond_5
    move v5, v6

    .line 193
    goto :goto_4
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "blah"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    const-string v4, "blah"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    const-string v4, "blah"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lhirondelle/date4j/ToStringUtil;->getText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 332
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v4, "This is the end."

    invoke-direct {v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 333
    .local v1, "parser":Ljava/util/StringTokenizer;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lhirondelle/date4j/ToStringUtil;->getText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 335
    new-instance v2, Lhirondelle/date4j/ToStringUtil$Ping;

    invoke-direct {v2, v6}, Lhirondelle/date4j/ToStringUtil$Ping;-><init>(Lhirondelle/date4j/ToStringUtil$1;)V

    .line 336
    .local v2, "ping":Lhirondelle/date4j/ToStringUtil$Ping;
    new-instance v3, Lhirondelle/date4j/ToStringUtil$Pong;

    invoke-direct {v3, v6}, Lhirondelle/date4j/ToStringUtil$Pong;-><init>(Lhirondelle/date4j/ToStringUtil$1;)V

    .line 337
    .local v3, "pong":Lhirondelle/date4j/ToStringUtil$Pong;
    invoke-virtual {v2, v3}, Lhirondelle/date4j/ToStringUtil$Ping;->setPong(Lhirondelle/date4j/ToStringUtil$Pong;)V

    .line 338
    invoke-virtual {v3, v2}, Lhirondelle/date4j/ToStringUtil$Pong;->setPing(Lhirondelle/date4j/ToStringUtil$Ping;)V

    .line 339
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 340
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 341
    return-void
.end method

.method private static vomit(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3
    .param p0, "aSpecialClass"    # Ljava/lang/Class;
    .param p1, "aMethodName"    # Ljava/lang/String;

    .prologue
    .line 281
    sget-object v0, Lhirondelle/date4j/ToStringUtil;->fLogger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reflection fails to get no-arg method named: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lhirondelle/date4j/Util;->quote(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method private static vomit(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 3
    .param p0, "aObject"    # Ljava/lang/Object;
    .param p1, "aMethod"    # Ljava/lang/reflect/Method;

    .prologue
    .line 272
    sget-object v0, Lhirondelle/date4j/ToStringUtil;->fLogger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get return value using reflection. Class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 278
    return-void
.end method
