<script lang="ts">
	import { onMount } from 'svelte';
	import * as THREE from 'three';

	onMount(() => {
		console.log(window.innerWidth);
		const scene = new THREE.Scene();
		const camera = new THREE.PerspectiveCamera(
			75,
			window.innerWidth / window.innerHeight,
			0.1,
			1000
		);
		const renderer = new THREE.WebGLRenderer();
		renderer.setSize(window.innerWidth, window.innerHeight);
		renderer.setAnimationLoop(animate);
		document.body.appendChild(renderer.domElement);

		const geometry = new THREE.BoxGeometry(2, 2, 2);
		const material = new THREE.MeshBasicMaterial({ color: 0x00ff00 });
		const cube = new THREE.Mesh(geometry, material);
		scene.add(cube);

		camera.position.z = 4;

		function animate() {
			cube.rotation.x += 0.01;
			cube.rotation.y += 0.01;

			renderer.render(scene, camera);
		}
	});
</script>

<div class="text-black absolute pointer-events-none top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2">
	<h1 class="text-5xl mb-5">Coming Soon</h1>
    <p class="text-xl">GBru Area</p>
</div>