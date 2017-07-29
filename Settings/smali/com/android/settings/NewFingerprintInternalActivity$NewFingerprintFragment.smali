.class public Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;
.super Lcom/android/settings/BaseEditFragment;
.source "NewFingerprintInternalActivity.java"


# instance fields
.field private gC:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mProgress:I

.field private qe:Lcom/android/settings/cZ;

.field private rM:Landroid/widget/TextView;

.field private uO:I

.field private uP:Landroid/os/Vibrator;

.field private uQ:Landroid/widget/TextView;

.field private uR:Landroid/widget/ImageView;

.field private uS:Landroid/widget/VideoView;

.field private uT:Landroid/widget/VideoView;

.field private uU:Landroid/widget/Button;

.field private uV:Landroid/view/View;

.field private uW:Landroid/app/AlertDialog;

.field private uX:Z

.field private uY:I

.field private uZ:Landroid/net/Uri;

.field private va:I

.field private vb:Z

.field private vc:Lcom/android/settings/cY;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/BaseEditFragment;-><init>()V

    .line 51
    iput-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->qe:Lcom/android/settings/cZ;

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uO:I

    .line 53
    iput v2, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mProgress:I

    .line 54
    iput-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uP:Landroid/os/Vibrator;

    .line 63
    iput-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uW:Landroid/app/AlertDialog;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mHandler:Landroid/os/Handler;

    .line 65
    iput-boolean v2, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uX:Z

    .line 66
    iput v2, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uY:I

    .line 67
    iput-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uZ:Landroid/net/Uri;

    .line 243
    new-instance v0, Lcom/android/settings/fN;

    invoke-direct {v0, p0}, Lcom/android/settings/fN;-><init>(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)V

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vc:Lcom/android/settings/cY;

    return-void
.end method

.method private L(Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vb:Z

    if-eqz v0, :cond_0

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_dark"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "raw"

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 228
    if-nez v1, :cond_1

    .line 229
    const/4 v0, 0x0

    .line 231
    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;I)I
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mProgress:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uW:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uZ:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uZ:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->L(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/app/AlertDialog;)V
    .locals 1

    .prologue
    .line 367
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 370
    :cond_0
    return-void
.end method

.method private a(Landroid/net/Uri;Landroid/widget/VideoView;)V
    .locals 1

    .prologue
    .line 236
    if-eqz p1, :cond_0

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uZ:Landroid/net/Uri;

    .line 238
    invoke-virtual {p2, p1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 239
    invoke-virtual {p2}, Landroid/widget/VideoView;->start()V

    .line 241
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Landroid/net/Uri;Landroid/widget/VideoView;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->a(Landroid/net/Uri;Landroid/widget/VideoView;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;I)I
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uY:I

    return p1
.end method

.method static synthetic b(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uT:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->a(Landroid/app/AlertDialog;)V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uO:I

    return v0
.end method

.method static synthetic d(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->va:I

    return v0
.end method

.method static synthetic e(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uW:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private eQ()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->qe:Lcom/android/settings/cZ;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->qe:Lcom/android/settings/cZ;

    invoke-virtual {v0}, Lcom/android/settings/cZ;->dW()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->qe:Lcom/android/settings/cZ;

    .line 154
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/os/Vibrator;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uP:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic g(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uQ:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->rM:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uU:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic j(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uV:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mProgress:I

    return v0
.end method

.method static synthetic l(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)I
    .locals 2

    .prologue
    .line 39
    iget v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uO:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uO:I

    return v0
.end method

.method static synthetic m(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uS:Landroid/widget/VideoView;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 158
    const v0, 0x7f0400be

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->gC:Landroid/view/View;

    .line 160
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->gC:Landroid/view/View;

    const v1, 0x7f130160

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uQ:Landroid/widget/TextView;

    .line 161
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->gC:Landroid/view/View;

    const v1, 0x7f130161

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->rM:Landroid/widget/TextView;

    .line 162
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->gC:Landroid/view/View;

    const v1, 0x7f13015d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uR:Landroid/widget/ImageView;

    .line 163
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->gC:Landroid/view/View;

    const v1, 0x7f13015e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uS:Landroid/widget/VideoView;

    .line 164
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->gC:Landroid/view/View;

    const v1, 0x7f13015f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uT:Landroid/widget/VideoView;

    .line 166
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->gC:Landroid/view/View;

    const v1, 0x7f130162

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uU:Landroid/widget/Button;

    .line 167
    new-instance v0, Lcom/android/settings/fK;

    invoke-direct {v0, p0}, Lcom/android/settings/fK;-><init>(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)V

    .line 174
    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uS:Landroid/widget/VideoView;

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setZOrderOnTop(Z)V

    .line 175
    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uS:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 176
    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uT:Landroid/widget/VideoView;

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setZOrderOnTop(Z)V

    .line 177
    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uT:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uT:Landroid/widget/VideoView;

    new-instance v1, Lcom/android/settings/fL;

    invoke-direct {v1, p0}, Lcom/android/settings/fL;-><init>(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 187
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uR:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uQ:Landroid/widget/TextView;

    const v1, 0x7f0c1111

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->rM:Landroid/widget/TextView;

    const v1, 0x7f0c1112

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 191
    const-string v0, "core_scan_gesture"

    invoke-direct {p0, v0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->L(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_0

    .line 193
    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uS:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 195
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "core_scan_output_%02d"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->L(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_1

    .line 197
    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uT:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uU:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/fM;

    invoke-direct {v1, p0}, Lcom/android/settings/fM;-><init>(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->gC:Landroid/view/View;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 125
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/BaseEditFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 127
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 128
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uX:Z

    .line 130
    const-string v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->qe:Lcom/android/settings/cZ;

    iget-object v2, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vc:Lcom/android/settings/cY;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/cZ;->a(Lcom/android/settings/cY;[B)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uP:Landroid/os/Vibrator;

    .line 133
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uS:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/BaseEditFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->va:I

    .line 85
    new-instance v0, Lcom/android/settings/cZ;

    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/cZ;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->qe:Lcom/android/settings/cZ;

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_password_type"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->vb:Z

    .line 93
    const-class v0, Lcom/android/settings/MiuiSecurityChooseUnlock$InternalActivity;

    .line 94
    if-eqz v1, :cond_0

    .line 95
    const/high16 v0, 0x10000

    if-ne v1, v0, :cond_1

    .line 96
    const-class v0, Lcom/android/settings/ConfirmLockPattern$InternalActivity;

    .line 102
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_2

    .line 103
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, v1

    .line 116
    :goto_1
    const-string v1, "has_challenge"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 117
    const-string v1, "challenge"

    iget-object v2, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->qe:Lcom/android/settings/cZ;

    invoke-virtual {v2}, Lcom/android/settings/cZ;->preEnroll()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 118
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 121
    return-void

    .line 98
    :cond_1
    const-class v0, Lcom/android/settings/ConfirmLockPassword$InternalActivity;

    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 106
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    const-string v0, "com.android.settings.ConfirmLockPattern.header"

    const-string v3, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 108
    const-string v0, "com.android.settings.titleColor"

    const-string v3, "com.android.settings.titleColor"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    const-string v0, "com.android.settings.bgColor"

    const-string v3, "com.android.settings.bgColor"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    const-string v0, "com.android.settings.lockBtnWhite"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    const-string v0, "com.android.settings.forgetPatternColor"

    const-string v3, "com.android.settings.forgetPatternColor"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    const-string v0, "com.android.settings.footerTextColor"

    const-string v3, "com.android.settings.footerTextColor"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    const-string v0, "com.android.settings.forgetPassword"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object v0, v1

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uX:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->eQ()V

    .line 75
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uW:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->a(Landroid/app/AlertDialog;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->finish()V

    .line 78
    :cond_0
    invoke-super {p0}, Lcom/android/settings/BaseEditFragment;->onPause()V

    .line 79
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Lcom/android/settings/BaseEditFragment;->onStart()V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->uV:Landroid/view/View;

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    return-void
.end method
