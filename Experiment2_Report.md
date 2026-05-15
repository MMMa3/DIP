# Experiment 2 &ensp; Transformation and Enhancement of Digital Images

## Experiment content:

This experiment covers four advanced tasks in Digital Image Processing (DIP), implemented using MATLAB. The tasks focus on the Fourier transform and its properties, the significance of amplitude and phase spectra, histogram-based contrast enhancement, and spatial-domain noise filtering. The four sub-experiments are summarized below:

| Task | File | Description |
|------|------|-------------|
| Q1 | `exp2Q1.m` | **Rotating Properties of Fourier Transform** — Constructs a binary image with a rectangular region, computes its 2-D FFT and magnitude spectrum, rotates the spatial-domain image by $315^{\circ}$, and demonstrates that the corresponding Fourier spectrum rotates by the same angle. |
| Q2 | `exp2Q2.m` | **Amplitude Spectrum & Phase Spectrum** — Computes the amplitude and phase spectra of a grayscale image (`i_peppers_gray.bmp`) via 2-D FFT, then separately reconstructs the image using (a) amplitude spectrum with a constant phase, and (b) constant amplitude with the original phase spectrum, to illustrate the dominant role of phase information in preserving image structure. |
| Q3 | `exp2Q3.m` | **Histogram Equalization** — Applies histogram equalization (`histeq`) with $K = 16$ discrete gray levels to the grayscale image `lena.bmp`, and compares the original and equalized images together with their respective histograms to evaluate contrast enhancement. |
| Q4 | `exp2Q4.m` | **Salt & Pepper Noise Removal via Spatial Filtering** — Adds salt-and-pepper noise (density $6\%$) to the image `i_peppers_gray.bmp`, then removes the noise using a $5 \times 5$ averaging (mean) filter, demonstrating the trade-off between noise suppression and edge blurring in spatial-domain filtering. |

## Experiment codes:

*(To be filled)*

## Experiment results:

### 3.1 &emsp; Q1 — Rotating Properties of Fourier Transform

**Observation:**

- **Original Image:** A binary image with a white rectangular region on a black background is displayed. The rectangle is oriented vertically, centered approximately in the middle of the frame.

- **FT of Original:** The magnitude spectrum of the original image exhibits a classic 2-D sinc-like diffraction pattern, with a bright central lobe and fringes extending along both the horizontal and vertical axes. Since the rectangle is taller than it is wide, the sinc pattern is more densely spaced along the vertical direction and more broadly spaced along the horizontal direction, reflecting the reciprocal relationship between spatial extent and frequency spread. The spectrum is symmetric about the origin (DC component at the center), as expected for a real-valued image.

- **Rotated Image:** After rotating the original image by $315^{\circ}$ (counterclockwise, equivalent to $45^{\circ}$ clockwise), the rectangular region now appears tilted at a $45^{\circ}$ angle (to the lower-left / upper-right direction). Bilinear interpolation ensures a smooth appearance at the rotated edges.

- **FT of Rotated Image:** The magnitude spectrum of the rotated image is also rotated by the same angle $315^{\circ}$ compared to the original spectrum. The sinc-like fringes now align along the tilted axis matching the rectangle's new orientation. This confirms the rotation property of the 2-D Fourier transform: a rotation in the spatial domain produces an identical rotation in the frequency domain.

**Visualization:**

*(To be filled)*

### 3.2 &emsp; Q2 — Amplitude Spectrum &amp; Phase Spectrum

**Observation:**

- **Amplitude (Magnitude) Spectrum:** The amplitude spectrum (log-scaled and normalized) shows a bright central region corresponding to the DC and low-frequency components, indicating that most of the image energy is concentrated at low frequencies. The spectrum decays rapidly toward higher frequencies, a typical characteristic of natural images.

- **Phase Spectrum:** The phase spectrum appears as seemingly random noise to the human eye, with no obvious discernible structural pattern. This is because the phase values range between $-\pi$ and $\pi$ and are distributed in a visually uncorrelated manner across the frequency domain.

- **Reconstruction with Amplitude Only (Constant Phase $\theta = 30^{\circ}$):** When the original phase information is discarded and replaced by a constant phase angle of $30^{\circ}$ for all frequency components, the reconstructed image loses all recognizable structural content. The output appears as a nearly uniform gray image with no discernible edges, contours, or object shapes. This demonstrates that amplitude information alone is insufficient to recover the spatial structure of an image.

- **Reconstruction with Phase Only (Constant Amplitude $=150$):** When the original phase spectrum is retained but all amplitude components are replaced by a constant value of $150$, the reconstructed image remarkably preserves most of the structural information. Edges, object boundaries, and overall spatial layout are clearly visible, although the contrast and intensity information is altered. This result illustrates the well-known fact that the phase spectrum carries the dominant structural information of an image, while the amplitude spectrum primarily governs contrast and intensity distribution.

**Visualization:**

*(To be filled)*

### 3.3 &emsp; Q3 — Histogram Equalization

**Observation:**

- **Original Image:** The original `lena.bmp` is displayed as a standard grayscale portrait. The image may appear somewhat low in contrast, with pixel intensities concentrated within a limited range of the grayscale spectrum, causing some details (particularly in shadow or highlight regions) to be less distinguishable.

- **Equalized Image:** After applying histogram equalization with $K = 16$ discrete output levels, the contrast of the image is substantially enhanced. Dark regions become darker and bright regions become brighter, revealing finer textural details in areas such as the hair, hat brim, and background that were previously less visible. However, because the output is discretized into only $16$ gray levels, false contouring artifacts may appear in smooth gradient regions (e.g., the shoulder and face), giving the image a slightly posterized appearance.

- **Original Histogram:** The histogram of the original image shows an uneven distribution, with intensity values clustered in certain ranges (typically a bell-shaped or skewed distribution) and sparse in others, indicating poor utilization of the full dynamic range.

- **Equalized Histogram:** The histogram of the equalized image approaches a uniform (flat) distribution across the $16$ discrete bins, confirming that the transformation has successfully redistributed the pixel intensities to approximate the desired uniform probability density function. This flattening is the mechanism by which contrast is enhanced.

**Visualization:**

*(To be filled)*

### 3.4 &emsp; Q4 — Salt &amp; Pepper Noise Removal via Spatial Filtering

**Observation:**

- **Original Image:** The clean grayscale image is displayed with normal contrast and clearly defined edges, textures, and smooth regions.

- **Noisy Image:** After adding salt-and-pepper noise with a density of $6\%$, the image is severely degraded by randomly scattered black pixels (pepper) and white pixels (salt) superimposed on the original content, giving the image a "speckled" appearance. This type of noise simulates faulty pixel elements in camera sensors or transmission errors.

- **Filtered Image:** Applying a $5 \times 5$ averaging (mean) filter significantly reduces the salt-and-pepper noise, and the majority of the random speckles are smoothed away. However, the filtering process also introduces noticeable blurring: sharp edges (e.g., fruit boundaries, stem contours) become softened, and fine textural details are lost. This illustrates the fundamental trade-off in linear spatial filtering — larger filter kernels produce more effective noise suppression at the cost of increased edge blurring and loss of high-frequency detail. A median filter would typically be more suitable for salt-and-pepper noise removal, as it can suppress impulsive noise while better preserving edges.

**Visualization:**

*(To be filled)*

**Visualization:**

*(To be filled)*

## Experiment conclusion:

*(To be filled)*
